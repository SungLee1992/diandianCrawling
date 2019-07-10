# -*- coding: utf-8 -*-

"""
@description  :  价格信息实体类
"""

import scrapy


class GysPriceItem(scrapy.Item):
    pro_name = scrapy.Field()  # 产品名称
    pro_unit = scrapy.Field()  # 产品单位
    pro_price = scrapy.Field()  # 产品价格
    avg_price = scrapy.Field()  #平均价格
    address = scrapy.Field()  # 发布地区
    pub_time = scrapy.Field()  # 发布时间
    price_from = scrapy.Field()  # 信息来源
    pass

