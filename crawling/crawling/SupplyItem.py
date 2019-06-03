"""
@author       :  SungLee
@date         :  2019-05-29 09:14
@description  :  供应信息实体类
"""

import scrapy


class SupplyItem(scrapy.Item):
    pro_name = scrapy.Field()  # 供应产品名称
    pro_price = scrapy.Field()  # 供应产品目标价格
    category_id = scrapy.Field()  # 产品所属分类编号
    sup_variety = scrapy.Field()  # 产品分类名称
    start_time = scrapy.Field()  # 开始时间
    end_time = scrapy.Field()  # 结束时间
    sup_num = scrapy.Field()  # 供应量
    sup_unit = scrapy.Field()  # 单位
    sup_pics = scrapy.Field()  # 产品图片
    sup_type = scrapy.Field()  # 供应类型，1现货，2预售
    sup_status = scrapy.Field()  # 供应状态，1正常，0已过期，2已结束
    pub_title = scrapy.Field()  # 发布标题
    pub_address = scrapy.Field()  # 发布地区
    pub_time = scrapy.Field()  # 发布时间
    sup_user = scrapy.Field()  # 联系人
    sup_phone = scrapy.Field()  # 联系电话
    sup_email = scrapy.Field()  # 邮箱
    sup_address = scrapy.Field()  # 供应地址
    sup_description = scrapy.Field()  # 供应描述
    info_from = scrapy.Field()  # 供应信息来源
    user_token = scrapy.Field()  # 发布用户
    pass
