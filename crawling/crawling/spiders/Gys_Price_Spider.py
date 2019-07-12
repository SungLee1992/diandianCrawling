import datetime

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
        # now_year = datetime.datetime.now().year
        # now_month = datetime.datetime.now().month
        now_year = 2019
        now_month = 3
        ul_list = response.xpath("//div[@class='xxgk_wrap']//ul")
        for ul in ul_list:
            title = ul.xpath(".//li[@class='w383']/a/text()").extract_first()
            pub_time = ul.xpath(".//li[@class='w100']/span/text()").extract_first()
            pub_month = datetime.datetime.strptime(pub_time, "%Y-%m-%d").month
            pub_year = datetime.datetime.strptime(pub_time, "%Y-%m-%d").year
            # 只爬当月数据
            #if ("农畜产品" in title) and (pub_month == now_month) and (pub_year == now_year):
            if ("农畜产品" in title) and (pub_year >= 2019):
                price_info_url = "http://www.nxgy.gov.cn/zwgk/zfxxgkml/nygjcjgxgg/"+ul.xpath(".//li[@class='w383']/a/@href").extract_first().lstrip("./")
                yield scrapy.Request(
                    price_info_url,
                    callback=self.parse_detail,
                    meta={"pub_time": pub_time}
                )
            else :
                continue


        # 翻页
        page_count = int(re.findall('createPageHTML\((.), ., "list", "html"\)', response.body.decode("UTF-8"))[0])
        print("page_count:"+str(page_count))
        cur_page = int(re.findall('createPageHTML\(., (.), "list", "html"\)', response.body.decode("UTF-8"))[0])
        print("cur_page:"+str(cur_page))
        if cur_page in range(0,page_count):
            next_page = "http://www.nxgy.gov.cn/zwgk/zfxxgkml/nygjcjgxgg/list_{}.html".format(cur_page+1)
            print(next_page)
            yield scrapy.Request(
                next_page,
                callback=self.parse,
            )

    """
    价格信息详细页的解析
    """

    def parse_detail(self, response):
        all_tr = response.xpath("//div[@class='ue_table']//tr")
        item = GysPriceItem()
        if all_tr is not None:
            items = []
            for index in range(1, len(all_tr)):
                # 第一组品种
                # 处理品种名
                pro_name = all_tr[index].xpath(".//td[1]//span/text()").extract_first()
                if (pro_name is None) or ("品 种" in pro_name) or ("填" in pro_name):
                    continue
                pro_name = ''.join(pro_name.split())        #去掉所有空格
                if "、" in pro_name:
                    category = pro_name.split("、")[1]
                    pro_name = pro_name.split("、")[1]
                # 处理原州区价格、隆德县价格、均价
                yzq_price = all_tr[index].xpath(".//td[3]//span/text()").extract_first()
                if yzq_price is None:
                    yzq_price = ""
                ldx_price = all_tr[index].xpath(".//td[4]//span/text()").extract_first()
                if ldx_price is None:
                    ldx_price = ""
                avg_price = all_tr[index].xpath(".//td[5]//span/text()").extract_first()
                if avg_price is None:
                    avg_price = ""

                item['pro_name'] = pro_name
                item['category'] = category
                item['pro_unit'] = "元/公斤"
                item['yzq_price'] = yzq_price.strip()
                item['ldx_price'] = ldx_price.strip()
                item['avg_price'] = avg_price.strip()
                item['pub_time'] = response.meta["pub_time"]
                item['price_from'] = "固原市农业农村局"

                items.append(deepcopy(item))

            for index in range(1,len(all_tr)):
                # 第二组品种
                # 处理品种名
                pro_name = all_tr[index].xpath(".//td[6]//span/text()").extract_first()
                if (pro_name is None) or ("品种" in pro_name) or ("填" in pro_name):
                    continue
                pro_name = ''.join(pro_name.split())
                if "、" in pro_name:
                    category = pro_name.split("、")[1]
                    pro_name = pro_name.split("、")[1]
                    if pro_name is "":
                        category = "蓄禽产品"
                        pro_name = "蓄禽产品"

                # 处理原州区价格、隆德县价格、均价
                yzq_price = all_tr[index].xpath(".//td[8]//span/text()").extract_first()
                if yzq_price is None:
                    yzq_price = ""
                ldx_price = all_tr[index].xpath(".//td[9]//span/text()").extract_first()
                if ldx_price is None:
                    ldx_price = ""
                avg_price = all_tr[index].xpath(".//td[10]//span/text()").extract_first()
                if avg_price is None:
                    avg_price = ""

                item['pro_name'] = pro_name
                item['category'] = category
                item['pro_unit'] = "元/公斤"
                item['yzq_price'] = yzq_price.strip()
                item['ldx_price'] = ldx_price.strip()
                item['avg_price'] = avg_price.strip()
                item['pub_time'] = response.meta["pub_time"]
                item['price_from'] = "固原市农业农村局"

                items.append(deepcopy(item))

            if len(items) !=0 :
                fp = open("./result.txt",'a+')
                fp.write(str(items))
                #print(items)
        pass