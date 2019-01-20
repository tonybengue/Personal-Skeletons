#coding: utf-8
from bs4 import BeautifulSoup as BS
import requests as req

url_sauce = 'http://www.google.com'

#requete vers le site
res = req.get(url_sauce)

soup = BS(res.content, 'html.parser')

print(soup.prettify)


Keywords = input('')


