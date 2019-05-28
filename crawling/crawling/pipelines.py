# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://doc.scrapy.org/en/latest/topics/item-pipeline.html

#为什么需要多个pipeline
#1、可能会有多个spider，不同的pipeline处理不同的item的内容
#2、一个spider的内容可能要做不同的操作，比如存入不同的数据库中

import logging

logger = logging.getLogger(__name__)

#陕西农业农村厅
class CrawlingPipeline_SXNYNCT(object):
    def process_item(self, item, spider):
        if spider.name == "sxnynctSpider":
            print(item)
        return item