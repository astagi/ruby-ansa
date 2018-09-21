require 'uri'


module Ansa

  public
  # Constant for homepage news.
  #
  # @since 1.0.0
  HOMEPAGE = 'homepage'

  # Constant for main news.
  #
  # @since 1.0.0
  NEWS = 'news'

  # Constant for politics news.
  #
  # @since 1.0.0
  POLITICS = 'politics'

  # Constant for world news.
  #
  # @since 1.0.0
  WORLD = 'world'

  # Constant for economy news.
  #
  # @since 1.0.0
  ECONOMY = 'economy'

  # Constant for soccer news.
  #
  # @since 1.0.0
  SOCCER = 'soccer'

  # Constant for sport news.
  #
  # @since 1.0.0
  SPORT = 'sport'

  private
  BASE_URL = 'http://www.ansa.it/sito/'
  LINKS = {
    HOMEPAGE => BASE_URL + 'ansait_rss.xml',
    NEWS => BASE_URL + 'notizie/cronaca/cronaca_rss.xml',
    POLITICS => BASE_URL + 'notizie/politica/politica_rss.xml',
    WORLD => BASE_URL + 'notizie/mondo/mondo_rss.xml',
    ECONOMY => BASE_URL + 'notizie/economia/economia_rss.xml',
    SOCCER => BASE_URL + 'notizie/sport/calcio/calcio_rss.xml',
    SPORT => BASE_URL + 'notizie/sport/sport_rss.xml'
  }
end
