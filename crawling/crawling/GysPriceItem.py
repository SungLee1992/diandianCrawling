# -*- coding: utf-8 -*-

"""
@description  :  价格信息实体类
"""

import scrapy


class GysPriceItem(scrapy.Item):
    pro_name = scrapy.Field()  # 产品名称
    category = scrapy.Field()  # 产品类别
    pro_unit = scrapy.Field()  # 产品单位
    yzq_price = scrapy.Field()  # 原州区产品价格
    ldx_price = scrapy.Field()  # 隆德县产品价格
    avg_price = scrapy.Field()  #平均价格
    pub_time = scrapy.Field()  # 发布时间
    price_from = scrapy.Field()  # 信息来源
    pass

