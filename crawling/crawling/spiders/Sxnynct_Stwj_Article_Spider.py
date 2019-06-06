import scrapy
import logging
import re
import datetime
from copy import deepcopy

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

        a_list = response.xpath("//div[@class='mltalbe']//table//tr/td[2]/a")
        for a in a_list:
            article_url = "http://nyt.shaanxi.gov.cn/"+a.xpath("./@href").extract_first()
            print("当前文章URL："+article_url)
            yield scrapy.Request(
                article_url,
                callback=self.parse_article
            )

        # 翻页
        page_count = 12
        cur_page = int(response.xpath("//li[@class='active']/a/text()").extract_first())+1
        print("当前页："+str(cur_page))
        if cur_page in range(1, page_count):
            next_page_url = "http://nyt.shaanxi.gov.cn/www/stwj1187/index_{}.html".format(cur_page)
            print("下一页："+next_page_url)
            yield scrapy.Request(
                next_page_url,
                callback=self.parse
            )

    

    
    """
    解析文章内容
    """
    def parse_article(self, response):
        item = ArticleItem()

        dr = re.compile(r'<[^>]+>',re.S)
        detail = response.xpath("//div[@class='TRS_Editor']").extract_first()
        source = response.xpath("//ul[@class='govinfo-lay-detail']//li[@class='govinfo-lay-office']/text()").extract_first()
        if not source.strip():
            source = ''
        art_detail = dr.sub('',detail)
            
        item['art_title'] = response.xpath("//div[@class='news_title_big']/text()").extract_first()
        item['art_detail'] = art_detail

        # item['art_detail'] = response.xpath("//div[@class='TRS_Editor']").extract_first()
        #item['art_content'] = response.xpath("//div[@class='TRS_Editor']//p[1]/descendant::text()").extract_first()

        item['art_date'] = response.xpath("//ul[@class='govinfo-lay-detail']//li[@class='govinfo-lay-no'][1]/text()").extract_first()
        # item['art_source'] = response.xpath("//ul[@class='govinfo-lay-detail']//li[@class='govinfo-lay-office']/text()").extract_first()
        item['art_source'] = source
        item['art_category'] = response.xpath("//ul[@class='govinfo-lay-detail']//li[@class='govinfo-lay-subject']/text()").extract_first()

        #处理item['detail'](文章正文)
        result_map = {"result_item": item}

        yield result_map
        