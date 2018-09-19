require 'net/http'
require 'rss'
require "ansa/news"


module Ansa
  def self.get_news_by_url(url)
    news = []
    rss = RSS::Parser.parse(open(url).read, false).items
    rss.each do |result|
      news.push(
        News.new(result.title, result.description, result.date, result.link)
      )
    end
    return news
  end

  def self.get_news(category)
    get_news_by_url(LINKS[category])
  end

  LINKS.each do |key, value|
    define_singleton_method "get_#{key}_news" do
      get_news_by_url(value)
    end
  end

  private_class_method :get_news_by_url
end
