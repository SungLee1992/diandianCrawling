# -*- coding: UTF-8 -*-
from bs4 import BeautifulSoup
import requests
import sys
import pymysql
import re
import random
from lxml import etree



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
    


#--------get page amount----------

def get_page_amount():
    ua_headers = set_request_head()
    print(ua_headers)
    requestUrl = 'http://www.agri.cn/kj/syjs/zzjs/'
    req = requests.get(requestUrl,headers = ua_headers)
    # request = urllib2.Request(requestUrl, headers = ua_headers)
    # response = urllib2.urlopen(request)
    # html = response.read()
    # print(type(html))


    req.encoding = 'utf-8'
    # print(req.text)
    # root = etree.HTML(req.content)
    # pageCount = root.xpath('//*[@id="pageBar1"]')
    # print(pageCount)
    # pageCount = req.xpath('//*[@id="pageBar1"]')
    # print(pageCount)
    html = req.text
    html_bf = BeautifulSoup(html)
    pageBar = html_bf.find('div',id='pageBar')
    print(pageBar.get_text())
    
    # pages = []

    # for string in pageContainer.strings:
    #     pages.append(repr(string))
    # amount = pages[-1]
    # return (int(amount[1:-1])+1)


#--------set page amount----------

def set_download_urls():
    downloadUrls = []
    baseUrl = 'http://www.agri.cn/kj/syjs/zzjs/'
    downloadUrls.append('http://www.agri.cn/kj/syjs/zzjs/index.htm')
    for i in range(1,60):
        url = baseUrl + 'index_' + str(i) + '.htm'
        downloadUrls.append(url)
    return downloadUrls


#--------get download page urls

def get_download_tables():
    downloadUrls = set_download_urls()
    ua_headers = set_request_head()
    tables = []
    for url in downloadUrls:
        req = requests.get(url,headers = ua_headers)
        req.encoding = 'utf-8'
        html = req.text
        table_bf = BeautifulSoup(html)
        tables.append(table_bf.find('table',width=500,align='center'))

    return tables

#---------get article links------------
def get_download_url():
    downloadTables = get_download_tables()
    articles = []
    for each in downloadTables:
        articles.append(each.find_all('a',class_='link03'))
    return articles

def read_article_info():
    articles = get_download_url()
    baseUrl = 'http://www.agri.cn/kj/syjs/zzjs'
    dict = {}

    for each in articles:
        for item in each:
            dict[item.string] = baseUrl + item.get('href')[1:]
    return dict


#---------method of save to MySQL-----------

def save_mysql(title,date,source,detail,tech_category):
    db = pymysql.connect('localhost','root','123456','bangnong')

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


#---------get content info and save ---------------

def get_content(title,url):
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
    save_mysql(title,date,source,text,"种植技术")
        

#--------save all article -----------

def save_data():
    dict = read_article_info()
    for key,value in dict.items():
        get_content(key,value)
    

save_data()
# get_page_amount()







#get_content('油菜防寒防冻及灾后恢复措施','http://www.agri.cn/kj/syjs/zzjs/201812/t20181218_6305013.htm')