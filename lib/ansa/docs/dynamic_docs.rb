module Ansa
  generate_get_news 'homepage', 'http://www.ansa.it/sito/ansait_rss.xml', '1.0.0'
  generate_get_news 'news', 'http://www.ansa.it/sito/notizie/cronaca/cronaca_rss.xml', '1.0.0'
  generate_get_news 'politics', 'http://www.ansa.it/sito/notizie/politica/politica_rss.xml', '1.0.0'
  generate_get_news 'world', 'http://www.ansa.it/sito/notizie/mondo/mondo_rss.xml', '1.0.0'
  generate_get_news 'economy', 'http://www.ansa.it/sito/notizie/economia/economia_rss.xml', '1.0.0'
  generate_get_news 'soccer', 'http://www.ansa.it/sito/notizie/sport/calcio/calcio_rss.xml', '1.0.0'
  generate_get_news 'sport', 'http://www.ansa.it/sito/notizie/sport/sport_rss.xml', '1.0.0'
end