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
        cur_page_str = response.xpath("//div[@class='pages']/strong/text()").extract_first()
        if cur_page_str is not None:
            cur_page = int(cur_page_str.strip())  # 取当前页页码
            if cur_page in range(1, page_count):
                next_page_url = response.xpath("//div[@class='pages']/a[last()]/@href").extract_first()  # 取“下一页”链接
                print("下一页：" + next_page_url)
                yield scrapy.Request(
                    next_page_url,
                    callback=self.parse,
                    meta={"item": item}
                )

    """
    小分类解析
    """
    def parse_category(self,response):
        a_list = response.xpath("//div[@class='bg-gray clearfix']//a")  # 取a列表
        for a in a_list:
            cur_category_url = a.xpath("./@href").extract_first()
            yield scrapy.Request(
                cur_category_url,
                callback=self.parse_pro
            )

    def parse_pro(self, response):
        li_list = response.xpath("//div[@class='list pad10 clearfix show-hide-data']//ul/li")  # 取ul列表
        # 解析li列表
        item = SupplyItem()
        for li in li_list:
            item['sup_variety'] = li.xpath("./a[@class='catname tit-bg-orange pos-abs']/text()").extract_first()
            item['pro_price'] = li.xpath(".//a[@class='font-gray-5']//div[@class='pad-t-d-10 text-align-c clearfix']/span/text()").extract_first()
            item['pub_title'] = li.xpath(".//a[@class='font-gray-5']//div[@class='pad-t-d-10 text-align-c clearfix']/h1/text()").extract_first()
            item['sup_pics'] = li.xpath(".//a[@class='font-gray-5']//img/@src").extract_first()
            item['info_from'] = li.xpath(".//a[@class='font-gray-5']/@href").extract_first()

            # url不为空，则请求详细页
            # 详细页解析
            if item['info_from'] is not None:
                yield scrapy.Request(
                    item['info_from'],
                    callback=self.parse_detail,  # 详细页的解析
                    meta={"item": deepcopy(item)}
                )
    #
        # 翻页
        page_count = 3  # 最多爬n页
        cur_page_str = response.xpath("//div[@class='pages']/strong/text()").extract_first()
        if cur_page_str is not None :
            cur_page = int(cur_page_str.strip())  # 取当前页页码
            if cur_page in range(1, page_count):
                next_page_url = response.xpath("//div[@class='pages']/a[last()]/@href").extract_first()  # 取“下一页”链接
                print("下一页：" + next_page_url)
                yield scrapy.Request(
                    next_page_url,
                    callback=self.parse_pro,
                    meta={"item": item}
                )


    """
    供应信息详细页的解析
    """

    def parse_detail(self, response):
        item = response.meta["item"]
        #item["pro_name"] = response.xpath("//div[@class='fxl pos-text']/span[last()]/text()").extract_first().strip()  # 取标题名
        # 爬详细
        ul = response.xpath("//ul[@class='two l-big line-height-36 clearfix']")
        # TODO 此处产品名称待定
        item["pro_name"] = response.xpath("//div[@class='fxl']//a[4]/text()").extract_first()
        item["sup_user"] = response.xpath("//a[@class='fxl fs-16']/text()").extract_first()
        if item["sup_user"] is None or item["sup_user"] is "":
            item["sup_user"] = ""

        try:
            item["end_time"] = ul.xpath("./li[6]/text()").extract_first()
            # 截止日期已到时直接退出
            if datetime.datetime.strptime(item["end_time"],"%Y-%m-%d") < datetime.datetime.now():
                return
        except Exception as e:
            pass

        try:
            item["pub_time"] = ul.xpath("./li[7]/text()").extract_first()
            # 发布时间为昨天之前的直接跳过,发布定时任务后开启
            if datetime.datetime.strptime(item['pub_time'],"%Y-%m-%d %H:%M") < datetime.datetime.now()-datetime.timedelta(days=1):
                return
        except Exception as e:
            item["pub_time"] = ""

        try:
            item["pro_price"] = ul.xpath("./li[1]/text()").extract_first()
        except Exception as e:
            item["pro_price"] = ""

        try:
            min_order_num = ul.xpath("./li[2]/text()").extract_first()
        except Exception as e:
            min_order_num = ""

        try:
            item["sup_num"] = ul.xpath("./li[3]/text()").extract_first()
        except Exception as e:
            item["sup_num"] = ""

        try:
            send_date = ul.xpath("./li[4]/span[2]/text()").extract_first()
        except Exception as e:
            send_date = ""

        try:
            item["pub_address"] = ul.xpath("./li[5]/text()").extract_first()
        except Exception as e:
            item["pub_address"] = ""

        # 拼接需求
        if min_order_num is not "" and min_order_num is not None :
            item["sup_description"] = "起订："+ min_order_num+"。"
        else :
            item["sup_description"] = ""

        if send_date is not  "" and send_date is not None:
            item["sup_description"] = item["sup_description"]+"发货期限：自买家付款之日起"+send_date+"天内发货。"

        item['sup_type'] = "供应"

        # 构造传递给pipeline的数据结构
        result_map = {"result_item": item}

        # print(result_map)
        yield result_map
