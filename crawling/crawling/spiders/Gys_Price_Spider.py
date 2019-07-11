import scrapy
import logging
import re
from copy import deepcopy

from crawling.GysPriceItem import GysPriceItem

logger = logging.getLogger(__name__)  # "__name"可以取到当前文件名Zgncpw_Pur_Spider.py


class Gys_Price_Spider(scrapy.Spider):
    name = 'Gys_Price_Spider'  # 爬虫名
    allowed_domains = ['nxgy.gov.cn']  # 允许爬的范围
    start_urls = ['http://www.nxgy.gov.cn/zwgk/zfxxgkml/nygjcjgxgg/list.html']

    """
    列表页面解析
    """

    def parse(self, response):
        print("#"*20)
        item = GysPriceItem()
        ul_list = response.xpath("//div[@class='xxgk_wrap']//ul")
        for ul in ul_list:
            title = ul.xpath(".//li[@class='w383']/a/text()").extract_first()
            if "农畜产品" in title :
                item['pub_time'] = ul.xpath(".//li[@class='w100']/span/text()").extract_first()
                # TODO 当月爬当月？还是，如果发布月份与当前月份同一个月则爬

                price_info_url = "http://www.nxgy.gov.cn/zwgk/zfxxgkml/nygjcjgxgg/"+ul.xpath(".//li[@class='w383']/a/@href").extract_first().lstrip("./")
                yield scrapy.Request(
                    price_info_url,
                    callback=self.parse_detail,
                    meta={"item": item}
                )
            else :
                continue


        # 翻页
        page_count = int(re.findall('createPageHTML\((.), ., "list", "html"\)', response.body.decode("UTF-8"))[0])
        # cur_page = int(re.findall('createPageHTML\(., (.), "list", "html"\)', response.body.decode("UTF-8"))[0])
        for cur_page in range(1,page_count):
            next_page = "http://www.nxgy.gov.cn/zwgk/zfxxgkml/nygjcjgxgg/list_{}.html".format(cur_page)
            print(next_page)
            yield scrapy.Request(
                next_page,
                callback=self.parse,
                meta={"item": deepcopy(item)}
            )
            cur_page+=1

    """
    价格信息详细页的解析
    """

    def parse_detail(self, response):
        all_tr = response.xpath("//div[@class='ue_table']//tr").extract_first()
        if all_tr is not None:
            print(len(all_tr))

        # for row in range(3,len(all_tr)):
        #     print()
        pass