import datetime

import scrapy
import logging
import re
from crawling.ArticleItem import ArticleItem

logger = logging.getLogger(__name__)  # "__name"可以取到当前文件名Sxnynct_Pur_Spider.py


class Sxnynct_Stwj_Article_Spider(scrapy.Spider):
    name = 'Sxnynct_Stwj_Article_Spider'  # 爬虫名
    allowed_domains = ['nyt.shaanxi.gov.cn']  # 允许爬的范围
    start_urls = ['http://nyt.shaanxi.gov.cn/www/stwj1187/index.html']  # 最开始请求的url地址

    """
    大类分解
    """

    def parse(self, response):

        tr_list = response.xpath("//div[@class='mltalbe']//table//tr")
        for tr in tr_list:
            pub_time = tr.xpath("./td[5]/text()").extract_first()
            # 发文时间在一天之前的直接跳过
            if pub_time is None or datetime.datetime.now().date() - datetime.datetime.strptime(pub_time,"%Y-%m-%d").date() > datetime.timedelta(days=1):
                continue
            article_url = "http://nyt.shaanxi.gov.cn/"+tr.xpath("./td[2]/a/@href").extract_first()
            # print("当前文章URL："+article_url)
            yield scrapy.Request(
                article_url,
                callback=self.parse_article
            )

        # 翻页
        page_count = 3
        cur_page = int(response.xpath("//li[@class='active']/a/text()").extract_first())+1
        # print("当前页："+str(cur_page))
        if cur_page in range(1, page_count):
            next_page_url = "http://nyt.shaanxi.gov.cn/www/stwj1187/index_{}.html".format(cur_page)
            # print("下一页："+next_page_url)
            yield scrapy.Request(
                next_page_url,
                callback=self.parse
            )

    """
    解析文章内容
    """
    def parse_article(self, response):
        item = ArticleItem()
        item['art_date'] = response.xpath(
            "//ul[@class='govinfo-lay-detail']//li[@class='govinfo-lay-no'][1]/text()").extract_first()
        print(item['art_date'])
        re_text = re.compile(r'<[^>]+>',re.S)

        #附件
        item['art_appendix'] = ""
        art_appendix = response.xpath("//div[2]//div//div[2]//a//@href").extract_first()
        # if art_appendix is not None :
        #     art_appendix = art_appendix.lstrip(".")
        if art_appendix is not None:
            if art_appendix.startswith('/'):
                item['art_appendix'] = response.url[0:response.url.find('/', 7)]+art_appendix
            else:
                item['art_appendix'] = art_appendix

        source = response.xpath("//ul[@class='govinfo-lay-detail']//li[@class='govinfo-lay-office']/text()").extract_first()
        if not source.strip():
            source = ''
        item['art_source'] = source

        #处理item['detail'](文章正文)
        detail = response.xpath("//div[@class='TRS_Editor']").extract_first()
        art_detail = re_text.sub('',detail)
        item['art_detail'] = art_detail


        item['art_title'] = response.xpath("//div[@class='news_title_big']/text()").extract_first()
        item['art_category'] = response.xpath("//ul[@class='govinfo-lay-detail']//li[@class='govinfo-lay-subject']/text()").extract_first()

        result_map = {"result_item": item}
        # print(item)

        yield result_map
        