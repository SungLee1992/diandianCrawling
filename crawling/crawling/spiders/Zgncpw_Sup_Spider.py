import scrapy
import logging
import re
from copy import deepcopy

from crawling.SupplyItem import SupplyItem

logger = logging.getLogger(__name__)  # "__name"可以取到当前文件名Zgncpw_Pur_Spider.py


class Zgncpw_Pur_Spider(scrapy.Spider):
    name = 'Zgncpw_Pur_Spider'  # 爬虫名
    allowed_domains = ['zgncpw.com']  # 允许爬的范围
    start_urls = ['http://www.zgncpw.com/sell/']  # 最开始请求的url地址，直接爬取全部分类和全部地区
    # sup_listIds = ['13', '9', '16', '6', '202', '212', '17',
    #                '1123']  # 分别是生鲜水果、新鲜蔬菜、畜牧水产、米面粮油、农副产品、农资产品、花卉苗木、中草药材供应信息url的listId

    sup_listIds = ['13', '9']
    """
    大类信息的列表页面解析
    """

    def parse(self, response):
        for listId in self.pur_listIds:
            cur_category_url = self.start_urls[0] + "list-{}.html".format(listId)  # 大类的url
            print(cur_category_url)
            yield scrapy.Request(
                cur_category_url,
                callback=self.parse_category,
                meta={"type": "supply"}
            )

    def parse_category(self, response):
        items = []  # 存放SupplyItem集合
        li_list = response.xpath("//div[@class='list pad10 clearfix show-hide-data']//ul/li")  # 取ul列表
        # 解析li列表
        for li in li_list:
            item = SupplyItem()
            item['pro_name'] = li.xpath(".a[@class='catname tit-bg-orange pos-abs']").extract_first()
            item['pub_address'] = li.xpath("./span[2]/text()").extract_first()
            item['pur_user'] = li.xpath("./span[3]/text()").extract_first()
            item['pub_time'] = li.xpath("./span[4]/text()").extract_first()
            item['info_from'] = li.xpath("./span[5]/a/@href").extract_first()

            # url不为空，则请求详细页
            # 二级详细页解析
            if item['info_from'] is not None:
                yield scrapy.Request(
                    item['info_from'],
                    callback=self.parse_detail,  # 详细页的解析
                    meta={"item": deepcopy(item), "type": "purchase"}
                )
    #
    #     # 翻页
    #     page_count = 10  # 最多爬n页
    #     cur_page = int(response.xpath("//div[@class='pages']/strong/text()").extract_first().strip())  # 取当前页页码
    #     if cur_page in range(1, page_count):
    #         next_page_url = response.xpath("//div[@class='pages']/a[last()]/@href").extract_first()  # 取“下一页”链接
    #         print("下一页：" + next_page_url)
    #         yield scrapy.Request(
    #             next_page_url,
    #             callback=self.parse_category,
    #             meta={"item": item, "type": response.meta["type"]}
    #         )
    #
    # """
    # 供应信息详细页的解析
    # """
    #
    # def parse_detail(self, response):
    #     item = response.meta["item"]
    #
    #     # 爬详细
    #     item["pur_num"] = response.xpath("//table[@cellpadding='5']//td[2]/text()").extract()[0]
    #     price = response.xpath("//table[@cellpadding='5']//td[2]/text()").extract()[1]
    #     try:
    #         packages = response.xpath("//table[@cellpadding='5']//td[2]/text()").extract()[2]
    #     except Exception as e:
    #         packages = ""
    #
    #     try:
    #         item["pur_address"] = response.xpath("//table[@cellpadding='5']//td[2]/text()").extract()[3]
    #     except Exception as e:
    #         item["pur_address"] = ""
    #
    #     try:
    #         item["end_time"] = response.xpath("//table[@cellpadding='5']//td[2]/text()").extract()[4]
    #     except Exception as e:
    #         item["end_time"] = ""
    #
    #     # 拼接采购需求
    #     item["pur_require"] = "需求数量" + item["pur_num"] + ",价格" + price + "," + packages + "," + item[
    #         "pur_address"] + "," + item["end_time"]
    #     # 构造传递给pipeline的数据结构
    #     result_map = {"result_item": item, "type": response.meta["type"]}
    #
    #     yield result_map
