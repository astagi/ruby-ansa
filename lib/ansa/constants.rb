require 'uri'


module Ansa

  BASE_URL = 'http://www.ansa.it/sito/'

  HOME = 'main'
  NEWS = 'news'
  POLITICS = 'politics'
  WORLD = 'world'

  LINKS = {
    HOME => BASE_URL + 'ansait_rss.xml',
    NEWS => BASE_URL + 'notizie/cronaca/cronaca_rss.xml',
    POLITICS => BASE_URL + 'notizie/politica/politica_rss.xml',
    WORLD => BASE_URL + 'notizie/mondo/mondo_rss.xml'
  }
end
