"""
@author       :  SungLee
@date         :  2019-05-29 09:14
@description  :  供应信息实体类
"""

import scrapy


class no_supply(scrapy.Item):
    pro_name = scrapy.Field()  # 供应产品名称
    sup_variety = scrapy.Field()  # 产品品种
    sup_validity = scrapy.Field()  # 有效期
    sup_num = scrapy.Field()  # 供应量
    sup_phone = scrapy.Field()  # 电话
    sup_user = scrapy.Field()  # 联系人
    sup_origin = scrapy.Field()  # 供应信息来源
    sup_type = scrapy.Field()  # 供应类型，1现货，2预售
    pass
