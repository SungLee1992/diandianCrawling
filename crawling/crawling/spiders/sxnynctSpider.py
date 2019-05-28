import scrapy
import logging

logger = logging.getLogger(__name__)        #"__name"可以取到当前文件名itcast1.py

class sxnynctSpider(scrapy.Spider):
    name = 'sxnynctSpider' #爬虫名
    allowed_domains = ['http://222.90.83.241']    #允许爬的范围
    start_urls = ['http://222.90.83.241/List.aspx?cid=87']    #最开始请求的url地址

    #数据提取的方法
    def parse(self, response):
        # 分组
        li_lsit = response.xpath("//ul/li")
        for li in li_lsit:
            item = {}
            item["nextUrl"] = self.allowed_domains[0]+"/"+li.xpath(".//a/@href").extract_first()
            item["title"] = li.xpath(".//a/text()").extract_first()
            item["location"] = li.xpath(".//a/em/text()").extract_first().strip("[]")
            item["pub_time"] = li.xpath("span[@class='r']/text()").extract_first().strip("[]")

            #logger.warning(item)
            yield  item
