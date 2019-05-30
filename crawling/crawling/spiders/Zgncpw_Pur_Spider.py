import scrapy
import logging
import re
from copy import deepcopy
from crawling.SupplyItem import SupplyItem

logger = logging.getLogger(__name__)  # "__name"可以取到当前文件名Zgncpw_Pur_Spider.py


class Zgncpw_Pur_Spider(scrapy.Spider):
    name = 'Zgncpw_Pur_Spider'  # 爬虫名
    allowed_domains = ['http://www.zgncpw.com']  # 允许爬的范围
    start_urls = ['http://www.zgncpw.com/buy/']  # 最开始请求的url地址，直接爬取全部分类和全部地区
    pur_listIds = ['18472', '18476', '18470', '102', '18535','18542','18477','18928']  # 分别是新鲜蔬菜、畜牧水产、米面粮油、生鲜水果、农副产品、农资产品、花卉苗木、中草药材求购信息url的listId


    """
    大类信息的列表页面解析
    """
    def parse(self, response):
        for listId in self.pur_listIds:
            cur_category_url = self.start_urls[0] + "?list-{}.html".format(listId)  # 大类的url
            print(cur_category_url)
            yield scrapy.Request(
                cur_category_url,
                callback=self.parse_category,
                meta = {"type":"purchase"}
            )


    def parse_category(self, response):
        cur_page = int(response.xpath("//div[@class='pages']/strong").extract_first())      #取当前页页码
        next_page =  response.xpath("//div[@class='pages']/a[last()]/@href").extract_first()    #取下一页链接
        page_count = 3
        # 翻页
        for cur_page in range(page_count):
            items = []  # 存放SupplyItem集合
            li_list = response.xpath("//ul[@class='buy-supply clearfix']/li")     #取表格列表
            for li in li_list:
                item = SupplyItem()
                item['pub_title'] = li.xpath("./span[1]").extract_first()
                item['pub_address'] = li.xpath("./span[2]").extract_first().strip("[]")
                item['pur_user'] = li.xpath("./span[3]").extract_first().strip("[]")
                item['pub_time'] = li.xpath("./span[4]").extract_first().strip("[]")
                item['info_from'] = li.xpath("./span[5]/a/@href").extract_first()

                # url不为空，则请求详细页
                # 二级详细页解析
                if item['info_from'] is not None:
                    yield scrapy.Request(
                        item['info_from'],
                        callback=self.parse_detail,  # 详细页的解析
                        meta={"item": deepcopy(item),"type":"purchase"}
                    )

            # 翻页列表页解析
            next_page_url = item['info_from'] + "&page={}".format(cur_page + 1)
            yield scrapy.Request(
                next_page_url,
                callback=self.parse_category,
                meta={"item": item,"type":response.meta["type"]}
            )

    """
    供应信息详细页的解析
    """

    def parse_detail(self, response):
        item = response.meta["item"]
        print("[" + item["pub_title"] + item["pub_time"] + "]" + item['sup_from'])
        content = response.xpath("//div[@class='show_content'][1]").extract_first()
        map = {"item":item , "content":content , "type":response.meta["type"]}
        yield map
