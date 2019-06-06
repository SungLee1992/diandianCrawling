"""
@author       :  SungLee
@date         :  2019-05-29 09:14
@description  :  供应信息实体类
"""

import scrapy


class ArticleItem(scrapy.Item):
    art_title = scrapy.Field()  # 标题
    art_date = scrapy.Field()  # 发文日期
    art_source = scrapy.Field()  # 来源
    art_detail = scrapy.Field()  # 正文
    art_content = scrapy.Field()  # 概述
    art_category = scrapy.Field()  # 文章分类
    tech_category = scrapy.Field()  # 技术文章分类
    art_appendix = scrapy.Field()   #附件
    pass
