# -*- coding: utf-8 -*-
import scrapy

#1、spider中的parse方法名不能改，piepelines中的process_item方法名不能改
#2、需要爬取的url地址不需要属于allow_domain下的连接
#3、response.xpath()返回的是一个含有selector对象的列表

#从选择器中提取字符串：
#1、extract()返回一个包含有字符串数据的列表
#2、extract_first()返回列表中的第一个字符串（即extract()[0]）

class ExampleSpider(scrapy.Spider):
    name = 'itcast' #爬虫名
    allowed_domains = ['itcast.com']    #允许爬的范围
    start_urls = ['http://www.itcast.cn/channel/teacher.shtml']    #最开始请求的url地址

    #数据提取的方法
    def parse(self, response):
        #处理start_urls地址对应的响应
        #ret1 = response.xpath("//div[@class='tea_con']//h3/text()").extract()   #extract()方法提取所有文字
        #print(ret1)

        #分组
        li_lsit = response.xpath("//div[@class='tea_con']//li")
        for li in li_lsit:
            item = {}
            item["url"] = li
            #item["name"] = li.xpath(".//h3/text()").extract()[0]
            #item["title"] = li.xpath(".//h4/text()").extract_first()  #extract_first()方法同extract()[0]，取第一个值，extract_first()取不到值时设为None
            #print(item)
            yield item  #yield 传给pipelines，并课减少内存的占用。Spider必须返回一个Request，BaseItem，dict 或 None
