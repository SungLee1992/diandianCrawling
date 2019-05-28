# -*- coding: utf-8 -*-
import scrapy

class Itcast2Spider(scrapy.Spider):
    name = 'itcast2' #爬虫名
    allowed_domains = ['itcast.com']    #允许爬的范围
    start_urls = ['http://www.itcast.cn/channel/teacher.shtml']    #最开始请求的url地址

    #数据提取的方法
    def parse(self, response):
        li_lsit = response.xpath("//div[@class='tea_con']//li")
        for li in li_lsit:
            item = {}
            item["name"] = li.xpath(".//h3/text()").extract()[0]
            item["title"] = li.xpath(".//h4/text()").extract_first()
            #print(item)
            yield item
