import scrapy
import logging
# from copy import deepcopy
from crawling.PriceItem import PriceItem


logger = logging.getLogger(__name__)  # "__name"可以取到当前文件名Sxnynct_Price_Spider.py


class Sxnynct_Price_Spider(scrapy.Spider):
    name = 'Sxnynct_Price_Spider'  # 爬虫名
    allowed_domains = ["sxs_jgt.54.site.veeteam.com"]  # 允许爬的范围
    start_urls = ["http://sxs_jgt.54.site.veeteam.com/index.php/home/day/index/p/1.html"]  # 最开始请求的url地址

    price_item_list = []
    print("start spider")
    
    """
    大类分解
    """

    def parse(self, response):

        print("start parse")

        page_count = response.xpath("//*[@id='pageContainer']//div//ul//li[last()]").extract_first()
        print(type(page_count))
        print(page_count)


        for i in range (1,page_count):
            crawl_url = "http://sxs_jgt.54.site.veeteam.com/index.php/home/day/index/p/{}.html".format(i)
            print(crawl_url)
            yield scrapy.Request(
                crawl_url,
                callback = self.parse_price
            )


    """
    价格信息详细页的解析
    """

    def parse_price(self, response):
        # price_items = response.meta["item"]

        item = PriceItem()
        price_items = response.xpath("//*[@id='price_lists']/ul/li")

        for price_item in price_items:
            item['pro_name'] = price_item[0:price_item.find('')]
            item['pro_price'] = ''
            item['pro_unit'] = ''
            item['pub_address'] = ''
            item['pub_time'] = ''
            # price_item_list.append(item)
            

        # content = response.xpath("//div[@class='show_content'][1]")

        # dr = re.compile(r'<[^>]+>',re.S)
        # i_content = dr.sub('',content.extract_first())

        # items = i_content.split('\r')
        # result = ""
        # for ii in items:
        #     str = "".join(ii.split())
        #     if str:
        #         result += str
        # # print(result)
        
        # sup_description = result[0:result.find('联系人：')]
        # sup_user = result[result.rfind('联系人：')+4:result.rfind('联系电话：')]
        # sup_phone = result[result.rfind('联系电话：')+5:result.rfind('有效期：')]
        # end_time = result[result.rfind('有效期：')+4:result.rfind('地址：')]
        # #截止日期已到时直接退出
        # # if datetime.datetime.strptime(end_time,"%Y-%m-%d")<datetime.datetime.now():
        # #     return
        # sup_address = result[result.rfind('地址：')+3:result.rfind('邮箱：')]


        # item['sup_description'] = sup_description
        # item['sup_user'] = sup_user
        # item['sup_phone'] = sup_phone
        # item['end_time'] = end_time
        # item['sup_address'] = sup_address


        # result_map = {"result_item": item}
        # print(item)
        # yield result_map
        