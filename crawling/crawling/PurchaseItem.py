"""
@author       :  SungLee
@date         :  2019-05-29 09:14
@description  :  供应信息实体类
"""

import scrapy

class PurchaseItem(scrapy.Item):
    pro_name = scrapy.Field()         #求购产品名称
    pro_price = scrapy.Field()        #需求产品目标价格
    category_id = scrapy.Field()      #产品所属分类
    area_require = scrapy.Field()     #产地要求
    start_time = scrapy.Field()       #开始时间
    end_time = scrapy.Field()         #结束时间
    pur_num = scrapy.Field()          #需求量
    pur_unit = scrapy.Field()         #单位
    pur_require = scrapy.Field()      #采购描述，采购要求，服务要求
    other_require = scrapy.Field()    #其他要求
    pur_status = scrapy.Field()       #采购状态，1正在采购，0已过期，2已结束
    pub_title = scrapy.Field()        #发布标题
    pub_address = scrapy.Field()      #发布地区
    pub_time = scrapy.Field()         #发布时间
    pur_user = scrapy.Field()         #联系人
    pur_phone = scrapy.Field()        #联系电话
    pur_email = scrapy.Field()        #邮箱
    pur_address = scrapy.Field()      #采购地址
    info_from = scrapy.Field()        #供应信息来源
    user_token = scrapy.Field()       #发布用户
    pass
