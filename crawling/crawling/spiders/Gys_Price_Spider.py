import scrapy
import logging
import datetime
from copy import deepcopy

from crawling.GysPriceItem import GysPriceItem

logger = logging.getLogger(__name__)  # "__name"可以取到当前文件名Zgncpw_Pur_Spider.py


class Gys_Price_Spider(scrapy.Spider):
    name = 'Gys_Price_Spider'  # 爬虫名
    allowed_domains = ['nxgy.gov.cn']  # 允许爬的范围
    start_urls = ['http://www.nxgy.gov.cn/zwgk/zfxxgkml/nygjcjgxgg/list.html/']

    """
    列表页面解析
    """

    def parse(self, response):
        print("#"*20)
        item = GysPriceItem()
        ul_list = response.xpath("//div[@class='xxgk_wrap']//ul")
        for ul in ul_list:
            title = ul_list.xpath(".//li[@class='w383']/a/text()").extract_first()
            print(title)
            if "农畜产品" in title :
                item['pub_time'] = ul_list.xpath(".//li[@class='100']/text()").extract_first()
                print(item['pub_time'])
                # TODO 当月爬当月？还是，如果发布月份与当前月份同一个月则爬

                price_info_url = "http://www.nxgy.gov.cn/zwgk/zfxxgkml/nygjcjgxgg/"+ul_list.xpath(".//li[@class='w383']/a/@href").extract_first().lstrip("./")
                print(price_info_url)
            else :
                return

            yield scrapy.Request(
                price_info_url,
                callback=self.parse_detail,
                meta={"item": deepcopy(item)}
            )

        # 翻页
        page_count = int(response.xpath("//div[@class='zm-page']/span/text()").extract_first())  # 最多爬n页
        print(page_count)
        #for page in page_count+1:

         #   page+=1

    """
    价格信息详细页的解析
    """

    def parse_detail(self, response):
       pass