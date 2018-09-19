require 'uri'


module Ansa

  BASE_URL = 'http://www.ansa.it/sito/'

  HOME = 'main'
  NEWS = 'news'
  POLITICS = 'politics'
  WORLD = 'world'
  ECONOMY = 'economy'

  LINKS = {
    HOME => BASE_URL + 'ansait_rss.xml',
    NEWS => BASE_URL + 'notizie/cronaca/cronaca_rss.xml',
    POLITICS => BASE_URL + 'notizie/politica/politica_rss.xml',
    WORLD => BASE_URL + 'notizie/mondo/mondo_rss.xml',
    ECONOMY => BASE_URL + 'notizie/economia/economia_rss.xml'
  }
end
