# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://doc.scrapy.org/en/latest/topics/item-pipeline.html

# 为什么需要多个pipeline
# 1、可能会有多个spider，不同的pipeline处理不同的item的内容
# 2、一个spider的内容可能要做不同的操作，比如存入不同的数据库中

import logging

logger = logging.getLogger(__name__)

# 陕西农业农村厅需求和供应数据处理
class Sxnynct_SupAndPur_Pipeline(object):
    def process_item(self, item, spider):
        if spider.name == "Sxnynct_SupAndPur_Spider":
            #供应信息处理
            if item["type"] == "supply":
                print(item)
                print(item["result_item"]["pub_title"]+"-"*20)
                print(item["content"])

            #需求信息处理
            if item["type"] == "purchase":
                print(item["type"] + "-" * 20)
                print(item["result_item"]["pub_title"]+"-"*20)
                print(item["content"])
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