import scrapy
import logging
import re
from copy import deepcopy
from crawling.SupplyItem import SupplyItem

logger = logging.getLogger(__name__)  # "__name"可以取到当前文件名Sxnynct_Pur_Spider.py


class Sxnynct_Pur_Spider(scrapy.Spider):
    name = 'Sxnynct_SupAndPur_Spider'  # 爬虫名
    allowed_domains = ['222.90.83.241']  # 允许爬的范围
    start_urls = ['http://222.90.83.241/List.aspx']  # 最开始请求的url地址
    pur_cids = ['117', '118', '119', '120', '121']  # 分别是粮食、蔬菜、水果、畜禽产品、苗木花卉求购信息url的cid
    sup_cids = ['87', '88', '89', '90', '91']  # 分别是粮食、蔬菜、水果、畜禽产品、苗木花卉供应信息url的cid
    """
    大类分解
    """

    def parse(self, response):
        for cid in self.pur_cids:
            cur_category_url = self.start_urls[0] + "?cid={}".format(cid)  # 大类的url
            print(cur_category_url)
            yield scrapy.Request(
                cur_category_url,
                callback=self.parse_category,
                meta={"type": "purchase"}
            )

        for cid in self.sup_cids:
            cur_category_url = self.start_urls[0] + "?cid={}".format(cid)  # 大类的url
            print(cur_category_url)
            yield scrapy.Request(
                cur_category_url,
                callback=self.parse_category,
                meta={"type": "supply"}
            )

    """
    翻页，每个大类列表页面解析
    """

    def parse_category(self, response):
        items = []  # 存放SupplyItem集合
        li_list = response.xpath("//ul/li")
        for li in li_list:
            item = SupplyItem()
            item['pub_title'] = li.xpath(".//a/text()").extract_first()
            item['pub_address'] = li.xpath(".//a/em/text()").extract_first().strip("[]")
            item['pub_time'] = li.xpath("span[@class='r']/text()").extract_first().strip("[]")
            detail_url = li.xpath(".//a/@href").extract_first()  # 取详情页链接

            # url不为空，则请求详细页
            # 二级详细页解析
            if detail_url is not None:
                item['info_from'] = "http://222.90.83.241/" + detail_url
                yield scrapy.Request(
                    item['info_from'],
                    callback=self.parse_detail,  # 详细页的解析
                    meta={"item": deepcopy(item), "type": response.meta["type"]}
                )

        # 翻页
        page_count = 1      #最多爬n页
        cur_page = int(response.xpath("//div[@id='AspNetPager1']/span/text()").extract_first().strip())  # 取当前页页码
        if cur_page in range(page_count):
            # 翻页列表页解析
            next_page_url = "http://222.90.83.241/" + response.xpath(
                "//div[@id='AspNetPager1']/a[last()-1]/@href").extract_first()
            print("下一页：" + next_page_url)
            yield scrapy.Request(
                next_page_url,
                callback=self.parse_category,
                meta={"item": item, "type": response.meta["type"]}
            )

    """
    供应信息详细页的解析
    """

    def parse_detail(self, response):
        item = response.meta["item"]
        content = response.xpath("//div[@class='show_content'][1]")

        dr = re.compile(r'<[^>]+>',re.S)
        i_content = dr.sub('',content.extract_first())

        items = i_content.split('\r')
        result = ""
        for ii in items:
            str = "".join(ii.split())
            if str:
                result += str
        # print(result)
        
        sup_description = result[0:result.find('联系人：')]
        sup_user = result[result.rfind('联系人：')+4:result.rfind('联系电话：')]
        sup_phone = result[result.rfind('联系电话：')+5:result.rfind('有效期：')]
        end_time = result[result.rfind('有效期：')+4:result.rfind('地址：')]
        sup_address = result[result.rfind('地址：')+3:result.rfind('邮箱：')]

        result = ""
        
        item['sup_description'] = sup_description
        item['sup_user'] = sup_user
        item['sup_phone'] = sup_phone
        item['end_time'] = end_time
        item['sup_address'] = sup_address

        print(item)
        print("-------")

        result_map = {"result_item": item, "type": response.meta["type"]}
        yield result_map
        