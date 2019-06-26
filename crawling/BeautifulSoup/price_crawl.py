# -*- coding: UTF-8 -*-
from bs4 import BeautifulSoup
import requests
import sys
import pymysql
import re
import time
import datetime


"""
@author       :  xiuhao yan
@date         :  2019-05-30 15:14
@description  :  爬取价格信息实体类
"""


#--------price item entity----------
class PriceItemEntity:
    def __init__(self, name, price,unit,address,date):
        self.name = name
        self.price = price
        self.unit = unit
        self.address = address
        self.date = date


class Save_DB:
    def __init__(self):
        self.conn = pymysql.connect('localhost','root','123456','bangnong')
        # return super().__init__(*args, **kwargs)

    def save_data(self,dataList):
        size = len(dataList)
        # db = pymysql.connect('localhost','root','123456','bangnong')
        # cursor = db.cursor()
        conn = self.conn
        cursor = conn.cursor()
        sql = 'INSERT INTO price_information_copy (pro_name,price,unit,address,pub_time) VALUES ("%s","%s","%s","%s","%s")'
        try:
            cursor.executemany(sql,dataList)
            print('write success: '+ str(size))
        except Exception as e:
            conn.rollback()
            print(e)
        conn.commit()
        conn.close()

#--------get page amount----------

def get_page_amount():
    requestUrl = 'http://sxs_jgt.54.site.veeteam.com/index.php/home/day/index/p/1.html'
    req = requests.get(requestUrl)
    req.encoding = 'utf-8'
    html = req.text
    html_bf = BeautifulSoup(html)
    pageContainer = html_bf.find('div',id='pageContainer')
    pages = []
    for string in pageContainer.strings:
        pages.append(repr(string))
    amount = pages[-1]
    return (int(amount[1:-1])+1)


#--------set crawlling pages----------
def set_crawlling_pages():
    print("----------------")
    print("set crawlling page start!")
    print("@:"+time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()))
    pageAmount = get_page_amount()
    crawllingPages = []
    baseUrl = 'http://sxs_jgt.54.site.veeteam.com/index.php/home/day/index/p/'
    for i in range(1,pageAmount):
        url = baseUrl + str(i) + '.html'
        crawllingPages.append(url)
    return crawllingPages

#--------get price instance info----------
"""
@example  "apple 1.4rmb kg yangling 2019-05-30" 
"""

def get_price_instance_info():
    print("----------------")
    print("get price instance info start!")
    print("@:"+time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()))
    crawllingPages = set_crawlling_pages()
    # crawllingPages = []
    # crawllingPages.append('http://sxs_jgt.54.site.veeteam.com/index.php/home/day/index/p/1.html')
    # crawllingPages.append('http://sxs_jgt.54.site.veeteam.com/index.php/home/day/index/p/2.html')
    pricePages = []         #price info page list
    priceInfo = []          #price info li list
    priceItem = []          #price info item
    priceInstanceList = []  #prince instance list


    for url in crawllingPages:
        req = requests.get(url)
        req.encoding = 'utf-8'
        html = req.text
        html_bf = BeautifulSoup(html)
        price_div = html_bf.find('ul',class_='x11')
        pricePages.append(price_div)

    for div in pricePages:
        li_list = div.find_all('li')
        priceInfo.append(li_list)

    for info in priceInfo:
        for i in range(1,len(info)):
            priceItem.append(info[i])
        
    for priceInstance in priceItem:
        priceStrings = priceInstance.strings
        priceInstanceString = ''
        for item in priceStrings:
            priceInstanceString += repr(item.replace('\xa0',''))[1:-1]
            priceInstanceString += ','
        priceInstanceList.append(priceInstanceString)
    
    return priceInstanceList



# #--------save all price instance -----------

def save_price_instance():
    print("----------------")
    print("task start!")
    print("@:"+time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()))
    starttime = datetime.datetime.now()

    priceInstanceList = get_price_instance_info()
    # db = pymysql.connect('localhost','root','123456','bangnong')
    insertSuccess = 0
    insertFailure = 0
    count = 0

    # cursor = db.cursor()
    
    print("----------------")
    print("insert start!")
    print("@:"+time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()))
    insertList = []
    for item in priceInstanceList:
        instanceItem = item.split(',')
        price_unit = instanceItem[1].split('/')
        # priceItemEntity = PriceItemEntity(instanceItem[0],price_unit[0],price_unit[1],instanceItem[2],instanceItem[3])
        insertList.append((instanceItem[0],price_unit[0],price_unit[1],instanceItem[2],instanceItem[3]))
        count += 1
    sd = Save_DB()
    sd.save_data(insertList)
    # sql = 'INSERT INTO price_information_copy (pro_name,price,unit,address,pub_time) VALUES ("%s","%s","%s","%s","%s")'
    # try:
    #     cursor.executemany(sql,insertList)
    #     db.commit()
    #     print("write success")
    # except Exception as e:
    #     db.rollback()
    #     print("write fail")
    #     print(e)
    # db.close()

    # for item in priceInstanceList:
    #     count += 1
    #     instanceItem = item.split(',')
    #     price_unit = instanceItem[1].split('/')
    #     sql = 'INSERT INTO price_information (pro_name,price,unit,address,pub_time) VALUES ("%s","%s","%s","%s","%s")' % (instanceItem[0],price_unit[0],price_unit[1],instanceItem[2],instanceItem[3])
    #     try:
    #         cursor.execute(sql)
            
    #         print(str(count)+":write success")
    #         insertSuccess += 1            
    #     except Exception as e:
    #         db.rollback()
    #         print(str(count)+":write fail")
    #         print(e)
    #         insertFailure += 1
    # db.commit()
    # db.close()
    print("----------------")
    print("task complete!")
    print("@:"+time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()))
    print("amount: " + str(count))
    print("success: " + str(insertSuccess))
    print("failure: " + str(insertFailure))

    print("----------------")
    endtime = datetime.datetime.now()
    seconds = (endtime - starttime).seconds
    start = starttime.strftime('%Y-%m-%d %H:%M')
    minutes = seconds // 60
    second = seconds % 60
    print((endtime - starttime))
    timeStr = str(minutes) + ' min ' + str(second) + " sec"
    print("task start at " + start + ' cost time: ' + timeStr)
        
save_price_instance()
# set_crawlling_pages()