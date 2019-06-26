# -*- coding: utf-8 -*-

"""
@description  :  价格信息实体类
"""

import scrapy


class PriceItem(scrapy.Item):
    pro_name = scrapy.Field()  # 产品名称
    pro_price = scrapy.Field()  # 产品价格
    pro_unit = scrapy.Field()  # 产品单位
    pub_address = scrapy.Field()  # 发布地区
    pub_time = scrapy.Field()  # 发布时间
    category_id = scrapy.Field()  # 产品所属分类编号
    pass

