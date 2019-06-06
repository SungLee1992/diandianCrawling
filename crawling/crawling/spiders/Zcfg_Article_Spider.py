import scrapy
import logging
import re
import datetime
from copy import deepcopy

from crawling.ArticleItem import ArticleItem

logger = logging.getLogger(__name__)  # "__name"可以取到当前文件名Zcfg_Article_Spider.py


class Zcfg_Article_Spider(scrapy.Spider):
    name = 'Zcfg_Article_Spider'  # 爬虫名
    allowed_domains = ['www.moa.gov.cn']  # 允许爬的范围(allowed_domains写法很重要# )
    start_urls = ['http://www.moa.gov.cn/gk']  # 最开始请求的url地址

    #zcfg_dict = {'fl': "法律", 'xzfg': "行政法规", 'nybgz': "规范性文件", 'qnhnzc': "政策"}
    zcfg_dict = {'fl': "法律"}
    nszd_dict = {'2019': "2019年农事指导", '2018': "2018年农事指导",'2017nszd':"2017农事指导"}

    """
       大类分解
    """

    def parse(self, response):
        item = ArticleItem()
        for key in self.zcfg_dict:
            cur_category_url = self.start_urls[0] + "/zcfg/{}".format(key)  # 政策法规大类的url
            item['art_category'] = self.zcfg_dict[key]
            yield scrapy.Request(
                cur_category_url,
                callback=self.parse_category,
                meta={"item": deepcopy(item),"cur_category_url":cur_category_url}
            )

        # for key in self.nszd_dict:
        #     cur_category_url = self.start_urls[0] + "/nszd_1/{}".format(key)  # 农事指导大类的url
        #     item['art_category'] = self.nszd_dict[key]
        #     print(item)
        #     yield scrapy.Request(
        #         cur_category_url,
        #         callback=self.parse_category,
        #         meta={"item": deepcopy(item)}
        #     )

    """
    翻页，每个大类列表页面解析
    """

    def parse_category(self, response):
        if response.status != 200:
            return
        li_list = response.xpath("//div[@class='pub-media1-txt-list fullwidth']//ul[@id='div']/li")
        item = response.meta["item"]
        for li in li_list:
            item['art_title'] = li.xpath("./a/text()").extract_first()
            item['art_date'] = li.xpath("./span/text()").extract_first()

            # 发布时间为昨天之前的直接跳过，发布后开启
            # if datetime.datetime.strptime(item['pub_time'],"%Y-%m-%d") < datetime.datetime.now()-datetime.timedelta(days=1):
            #     return

            detail_url = li.xpath("a/@href").extract_first().lstrip("./")  # 取详情页链接
            # 文章详细页URL解析
            if detail_url is not None:
                if "www" not in detail_url:
                    detail_url = response.meta['cur_category_url'] + "/"+detail_url
                    print(detail_url)

                yield scrapy.Request(
                    detail_url,
                    callback=self.parse_detail,  # 详细页的解析
                    meta={"item": deepcopy(item)}
                )

        # 翻页列表页解析
        #print(response.body.decode())
        #page_count = re.findall("var countPage = (.*?)",response.body.decode("UTF-8"))
        current_page = int(re.findall("var currentPage = (.*?);",response.body.decode("UTF-8"))[0])
        print("当前页："+str(current_page))
        if current_page < 5:
            next_page_url = response.meta['cur_category_url']+"index_{}.htm".format(current_page+1)
            print("下一页：" + next_page_url)
            yield scrapy.Request(
                next_page_url,
                callback=self.parse_category,
                meta={"item": item}
            )

    """
    供应信息详细页的解析
    """

    def parse_detail(self, response):
        # item = response.meta["item"]
        # #正文
        # item['art_detail'] = response.xpath("//div[@class='arc_body mg_auto w_855 pd_b_35']").extract_first()
        # if item['art_detail'] is None:
        #     return
        #
        # #附件
        # item['art_appendix'] = response.xpath("//span[@class='xiangqing_fujian']/a/@href").extract_first()
        # if item['art_appendix'] is not None :
        #     item['art_appendix'] = item['art_appendix'].lstrip(".")
        # if item['art_appendix'] is not None:
        #     item['art_appendix'] = response.url[0:response.url.rfind('/', 1)]+item['art_appendix']
        #
        # #来源
        # item['art_source'] = "中华人民共和国农业农村部"
        # # author = response.xpath("//div[@class='bjjMAuthorBox']//span[2]//span/text()").extract_first()
        # # if author is not None:
        # #     print("author"+author)
        # # source = response.xpath("//div[@class='bjjMAuthorBox']//span[3]//span/text()").extract_first()
        # # if source is not None:
        # #     print("source"+source)
        # # if author is not None:
        # #     item['art_source'] = author
        # # if source is not None:
        # #     item['art_source'] = source
        # #
        # print(item)
        pass

