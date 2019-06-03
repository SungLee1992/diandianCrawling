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


logger = logging.getLogger(__name__)

# 陕西农业农村厅需求和供应数据处理
class Sxnynct_SupAndPur_Pipeline(object):

    def process_item(self, item, spider):

        db = pymysql.connect('localhost','root','123456','bangnong')

        cursor = db.cursor()

        sql = ''     


        if spider.name == "Sxnynct_SupAndPur_Spider":
            #供应信息处理
            if item["type"] == "supply":
                sql = 'INSERT INTO no_supply (pro_name,sup_variety,sup_validity,sup_num,sup_phone,sup_user,sup_origin,sup_type) VALUES ("%s","%s","%s","%s","%s","%s","%s","%s")' % (item['pub_title'],item['sup_description'],item['end_time'],'',item['sup_phone'],item['sup_user'],'陕西省农村信息站监管系统','供应')

            #需求信息处理
            if item["type"] == "purchase":
                sql = 'INSERT INTO no_supply (pro_name,sup_variety,sup_validity,sup_num,sup_phone,sup_user,sup_origin,sup_type) VALUES ("%s","%s","%s","%s","%s","%s","%s","%s")' % (item['pub_title'],item['sup_description'],item['end_time'],'',item['sup_phone'],item['sup_user'],'陕西省农村信息站监管系统','需求')
        
       
        try:
            cursor.execute(sql)
            print('write success')
        except Exception as e:
            db.rollback()
            print(e)
        db.commit()
        db.close()

        return item

# 中国农产品网需求和供应爬虫
class Zgncpw_Pur_Pipeline(object):
    def process_item(self, item, spider):
        if spider.name == "Zgncpw_Pur_Spider":
            # #供应信息处理
            # if item["type"] == "supply":
            #     print(item["type"]+"-"*20)
            #     print(item["content"])

            #需求信息处理
            if item["type"] == "purchase":
                print(item["type"] + "-" * 20+item["result_item"]["pub_title"])
                print(item["result_item"]["pur_require"])
        return item