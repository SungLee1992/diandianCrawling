# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://doc.scrapy.org/en/latest/topics/item-pipeline.html

# 为什么需要多个pipeline
# 1、可能会有多个spider，不同的pipeline处理不同的item的内容
# 2、一个spider的内容可能要做不同的操作，比如存入不同的数据库中

import logging
import pymysql
# from crawling.SupplyItem import SupplyItem


#import pymysql.cursors
# from sqlalchemy import create_engine,Column,Integer,String,Table,MetaData
# from sqlalchemy.ext.declarative import declarative_base
# from sqlalchemy.orm import sessionmaker
#from crawling.settings import settings

logger = logging.getLogger(__name__)


#class DB_Pipeline(object):
    # def __init__(self):  # 执行爬虫时
    #     self.engine = create_engine('mysql://root:0@localhost:3306/spider?charset=utf8', echo=True)  # 连接数据库
    #     self.session = sessionmaker(bind=self.engine)
    #     self.sess = self.session()
    #     Base = declarative_base()
    #     # 动态创建orm类,必须继承Base, 这个表名是固定的,如果需要为每个爬虫创建一个表,请使用process_item中的
    #     self.Article = type('article_articletest', (Base, ArticleTemplate), {'__tablename__': 'article_article'})
    #
    # def process_item(self, item, spider):  # 爬取过程中执行的函数
    #     # 按照爬虫名动态创建一个类
    #     # if not hasattr(self,spider.name):
    #     #     self.Article = type(spider.name, (Base, ArticleTemplate), {'__tablename__': spider.name, })
    #     # 在数据库中创建这个表
    #     # if spider.name not in self.engine.table_names(): #create table for this spider
    #     #     self.Article.metadata.create_all(self.engine)
    #
    #     self.sess.add(self.Article(**item))
    #     self.sess.commit()
    #
    # def close_spider(self, spider):  # 关闭爬虫时
    #     self.sess.close()

    # def __init__(self):
    #     # 连接数据库
    #     self.connect = pymysql.connect(
    #         host=settings.MYSQL_HOST,  # 数据库地址
    #         port=settings.MYSQL_PORT,  # 数据库端口
    #         db=settings.MYSQL_DBNAME,  # 数据库名
    #         user=settings.MYSQL_USER,  # 数据库用户名
    #         passwd=settings.MYSQL_PASSWD,  # 数据库密码
    #         charset='utf8',  # 编码方式
    #         use_unicode=True)
    #     # 通过cursor执行增删查改
    #     self.cursor = self.connect.cursor()
    #
    # '''
    # 重写process_item方法
    # '''
    #
    # def process_item(self, item, spider):
    #     supplyItems = []
    #     purchaseItems = []
    #     try:
    #
    #         if item["type"] == "supply":
    #             # 查重处理
    #             self.cursor.execute(
    #                 """select * from supply where info_from = %s""",
    #                 item['img_url'])
    #             # 是否有重复数据
    #             repetition = self.cursor.fetchone()
    #
    #             # 重复
    #             if repetition:
    #                 pass
    #             else:
    #                 sql = '''insert into supply(name, info, rating, num ,quote, img_url) value (%s, %s, %s, %s, %s, %s)'''
    #                 supplyItems = supplyItems.append(item['name'], item['info'], item['rating'], item['num'], item['quote'],
    #                                              item['img_url'])
    #                 self.cursor.execute(sql, supplyItems)
    #
    #         if item["type"] == "purchase":
    #             # 查重处理
    #             self.cursor.execute(
    #                 """select * from supply where info_from = %s""",
    #                 item['img_url'])
    #             # 是否有重复数据
    #             repetition = self.cursor.fetchone()
    #
    #             # 重复
    #             if repetition:
    #                 pass
    #             else:
    #                 sql = '''insert into purchase(name, info, rating, num ,quote, img_url) value (%s, %s, %s, %s, %s, %s)'''
    #                 purchaseItems = purchaseItems.append(item["result_item"], item['info'], item['rating'], item['num'], item['quote'])
    #                 self.cursor.execute(sql, supplyItems)
    #
    #         # 提交sql语句
    #         self.connect.commit()
    #
    #     except Exception as error:
    #         # 出现错误时打印错误日志
    #         logger.error(error)
    #     return item
    #
    # def insert_into_table(self, conn, item):
    #     conn.execute(
    #         'insert into zreading(title,author,pub_date,types,tags,view_counts,content) values(%s,%s,%s,%s,%s,%s,%s)', (
    #             item['title'], item['author'], item['pub_date'], item['types'], item['tags'], item['view_count'],
    #             item['content']))

#把数据保存到MySQL
class Save_DB:
    def __init__(self):
        self.conn = pymysql.connect('localhost','root','123456','bangnong')

    def save_data(self,dataList):
        size = len(dataList)
        conn = self.conn
        cursor = conn.cursor()
        sql = 'INSERT INTO no_supply_copy (pro_name,sup_variety,sup_validity,sup_num,sup_phone,sup_user,sup_origin,sup_type) VALUES ("%s","%s","%s","%s","%s","%s","%s","%s")'
        try:
            cursor.execute(sql,dataList)
            print('write success: '+ str(size))
        except Exception as e:
            conn.rollback()
            print(e)
        conn.commit()
        conn.close()

# 陕西农业农村厅需求和供应数据处理
class Sxnynct_SupAndPur_Pipeline(object):

    

    def process_item(self, item, spider):
        
        pt = Save_DB()

       
        if spider.name == "Sxnynct_SupAndPur_Spider":
            # sql = 'INSERT INTO no_supply (pro_name,sup_variety,sup_validity,sup_num,sup_phone,sup_user,sup_origin,sup_type) VALUES ("%s","%s","%s","%s","%s","%s","%s","%s")'
            
            # 供应信息处理
            if item["type"] == "supply":
                print(item["type"] + "-" * 20)
                data_item = item['result_item']
                insert_data = (data_item['pub_title'],data_item['sup_description'],data_item['end_time'],'',data_item['sup_phone'],data_item['sup_user'],'陕西省农村信息站监管系统','供应')
                pt.save_data(insert_data)
                

            # 需求信息处理
            if item["type"] == "purchase":
                print(item["type"] + "-" * 20)
                data_item = item['result_item']
                insert_data = (data_item['pub_title'],data_item['sup_description'],data_item['end_time'],'',data_item['sup_phone'],data_item['sup_user'],'陕西省农村信息站监管系统','需求')
                pt.save_data(insert_data)
               


        return item


# 中国农产品网供应爬虫
class Zgncpw_Pur_Pipeline(object):
    
    def process_item(self, item, spider):

        db = pymysql.connect('localhost','root','123456','bangnong')
        cursor = db.cursor()
        sql = 'INSERT INTO no_supply (pro_name,sup_variety,sup_validity,sup_num,sup_phone,sup_user,sup_origin,sup_type) VALUES ("%s","%s","%s","%s","%s","%s","%s","%s")'


        if spider.name == "Zgncpw_Pur_Spider":
            # 需求信息处理
            if item["type"] == "purchase":
                print(item["type"] + "-" * 20)
                data_item = item['result_item']
                insert_data = (data_item['pub_title'],data_item['pub_title'],data_item['end_time'],data_item['pur_num'],'暂无',data_item['pur_user'],'中国农产品网','需求')
                # print(item["result_item"])
        try:
            cursor.execute(sql,insert_data)
            print('write success')
        except Exception as e:
            db.rollback()
            print(e)
        db.commit()
        db.close()
        return item


# 中国农产品网供应爬虫
class Zgncpw_Sup_Pipeline(object):
    def process_item(self, item, spider):

        db = pymysql.connect('localhost','root','123456','bangnong')
        cursor = db.cursor()
        sql = 'INSERT INTO no_supply (pro_name,sup_variety,sup_validity,sup_num,sup_phone,sup_user,sup_origin,sup_type) VALUES ("%s","%s","%s","%s","%s","%s","%s","%s")'

        if spider.name == "Zgncpw_Sup_Spider":
            # 供应信息处理
            if item["type"] == "supply":
                print(item["type"] + "-" * 20)
                data_item = item['result_item']
                data = (data_item['pro_name'],data_item['sup_variety'],data_item['end_time'],data_item['sup_num'],'暂无','','中国农产品网','供应')
                # print(item["result_item"])
        try:
            cursor.execute(sql,data)
            print('write success')
        except Exception as e:
            db.rollback()
            print(e)
        db.commit()
        db.close()

        return item
