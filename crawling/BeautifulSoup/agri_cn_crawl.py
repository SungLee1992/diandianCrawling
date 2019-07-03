# -*- coding: UTF-8 -*-
from bs4 import BeautifulSoup
import requests
import sys
import pymysql
import re
import random
from lxml import etree
import datetime



#--------set request head---------

def set_request_head():

    # 用于构造随机请求头
    # ua_list = [
    #     '',
    #     '',
    #     ''
    # ]
    # user_agent = random.choice(ua_list)

    ua_header = {
        'User-Agent':'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36'
    }
    return ua_header
    


#--------手动设置爬取几页数据----------

def set_download_urls(baseUrl):
    downloadUrls = []
    # baseUrl = 'http://www.agri.cn/kj/syjs/jgjs/'
    # downloadUrls.append('http://www.agri.cn/kj/syjs/jgjs/index.htm')
    downloadUrls.append(baseUrl)
    for i in range(1,5):
        url = baseUrl + 'index_' + str(i) + '.htm'
        downloadUrls.append(url)
    return downloadUrls


#--------获取文章列表所在的table------

def get_download_tables(baseUrl):
    downloadUrls = set_download_urls(baseUrl)
    ua_headers = set_request_head()
    tables = []
    for url in downloadUrls:
        req = requests.get(url,headers = ua_headers)
        req.encoding = 'utf-8'
        html = req.text
        table_bf = BeautifulSoup(html)
        tables.append(table_bf.find('table',width=500,align='center'))

    return tables

#---------获取每个table中每条文章所在的table ------------
def get_news_item(baseUrl):
    downloadTables = get_download_tables(baseUrl)
    newsItem = []
    for each in downloadTables:
        newsItem.append(each.find_all('table',width=480))
    return newsItem

#---------选取发布时间在规定范围内的文章------------
def get_download_url(baseUrl):
    newsItem = get_news_item(baseUrl)
    articles = []
    for each in newsItem:
        for item in each:
            if item.find('td',class_='hui_14') is not None:
                pubTime = item.find('td',class_='hui_14').get_text()[1:-2]
                if datetime.datetime.strptime(pubTime,"%Y-%m-%d") > datetime.datetime.now()-datetime.timedelta(days=2):
                    articles.append(item.find('a',class_='link03'))
    return articles

#------------解析文章的url--------------
def read_article_info(baseUrl):
    articles = get_download_url(baseUrl)
    # baseUrl = 'http://www.agri.cn/kj/syjs/jgjs'
    dict = {}
    for each in articles:
        dict[each.string] = baseUrl + each.get('href')[1:]
    return dict


#---------保存数据到MySQL-----------

def save_mysql(title,date,source,detail,tech_category):
    db = pymysql.connect('localhost','root','123456','bangnong',use_unicode=True,charset='utf8')

    cursor = db.cursor()

    sql = 'INSERT INTO article (art_title,art_date,art_source,art_detail,tech_category) VALUES ("%s","%s","%s","%s",%s)' % (title,date,source,detail,tech_category)

    try:
        cursor.execute(sql)
        db.commit()
        print("write success")
    except Exception as e:
        db.rollback()
        print("write fail")
        print(e)
    
    db.close()


#---------根据Url读取文章内容并保存到数据库 ---------------

def get_content(title,url,tech_category):
    ua_headers = set_request_head()
    print(title + '---->' + url)

    req = requests.get(url,headers = ua_headers)
    req.encoding = 'utf-8'
    html = req.text
    table_bf = BeautifulSoup(html)
    article = table_bf.find('table',width=640)

    #----article content-----
    #content = article.find(class_='TRS_Editor').get_text()
    #content = article.find('div',attrs={'id':re.compile("TRS_")}).select("p")
    content = article.select("p")
    info = article.find(class_='hui_12-12').get_text()
    date = info[3:19]
    source = info.split("：")[3]
    text = ""

    for item in content:
        text += item.get_text()
        text += "\n"

    #print(text)
    save_mysql(title,date,source,text,tech_category)
        

#--------保存数据-----------

def save_data(baseUrl,tech_category):
    dict = read_article_info(baseUrl)
    for key,value in dict.items():
        get_content(key,value,tech_category)


#--------爬虫入口-----------
def crawl_data():
    baseUrls = ['http://www.agri.cn/kj/syjs/zzjs/','http://www.agri.cn/kj/syjs/yzjs/','http://www.agri.cn/kj/syjs/jgjs/']
    # startUrls = [] 
    for baseUrl in baseUrls:
        save_data(baseUrl,baseUrls.index(baseUrl))
    


    

crawl_data()