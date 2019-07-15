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


# 统一数据库处理pipeline
class DB_Pipeline(object):
    def process_item(self, item, spider):
        db = pymysql.connect('localhost', 'root', '123456', 'bangnong')
        cursor = db.cursor()
        try:
            if spider.name == "Gys_Price_Spider":
                cursor.executemany(item['sql'],item['data'])
            else:
                cursor.execute(item['sql'], item['data'])
        except Exception as e:
            db.rollback()
            logger.error(e)
        db.commit()
        db.close()

        return item


# 陕西农业农村厅需求和供应数据处理
class Sxnynct_SupAndPur_Pipeline(object):

    def process_item(self, item, spider):
        if spider.name == "Sxnynct_SupAndPur_Spider":
            sql = '''INSERT INTO no_supply (pro_name,sup_variety,sup_validity,sup_num,sup_phone,sup_user,sup_origin,sup_type) VALUES (%s,%s,%s,%s,%s,%s,%s,%s);'''
            data_item = item['result_item']
            print(data_item['type'] + "-" * 20)
            data = (data_item['pub_title'], data_item['sup_variety'], data_item['end_time'], '', data_item['sup_phone'],
                    data_item['sup_user'], '陕西省农业农村厅', data_item['type'])

            item['sql'] = sql
            item['data'] = data

        return item


# 中国农产品网供需信息处理
class Zgncpw_SupAndPur_Pipeline(object):
    def process_item(self, item, spider):
        if spider.name == "Zgncpw_Pur_Spider" or spider.name == "Zgncpw_Sup_Spider":
            data_item = item['result_item']
            sql = '''INSERT INTO no_supply (pro_name,sup_variety,sup_validity,sup_num,sup_phone,sup_user,sup_origin,sup_type) VALUES (%s,%s,%s,%s,%s,%s,%s,%s);'''
            data = (data_item['pub_title'], data_item['sup_variety'], data_item['end_time'], data_item['sup_num'],
                    '暂无', data_item['sup_user'], '中国农产品网', data_item['sup_type'])
            item['sql'] = sql
            item['data'] = data
        return item


# 文章信息处理
class Article_Pipeline(object):

    def process_item(self, item, spider):
        if spider.name == "Sxnynct_Stwj_Article_Spider" or spider.name == "Zcfg_Article_Spider":
            data_item = item['result_item']

            sql = '''INSERT INTO article (art_title,art_date,art_source,art_detail,art_content,art_category,tech_category,art_appendix) VALUES (%s,%s,%s,%s,%s,%s,%s,%s);'''

            data = (data_item['art_title'], data_item['art_date'], data_item['art_source'],
                    data_item['art_detail'], '', data_item['art_category'], '', data_item['art_appendix'])

            item['sql'] = sql
            item['data'] = data
        return item

# 固原市价格信息处理
class Gys_Price_Pipeline(object):
    def process_item(self,item,spider):
        if spider.name == "Gys_Price_Spider":
            sql = '''INSERT INTO gys_price (pro_name,category,pro_unit,yzq_price,ldx_price,avg_price,pub_time,price_from) VALUES (%s,%s,%s,%s,%s,%s,%s,%s);'''
            data = item['result_item']

            item['sql'] = sql
            item['data'] = data

        return item
