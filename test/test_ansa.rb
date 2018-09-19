require 'simplecov'
require 'time'

SimpleCov.command_name 'Unit Tests'
SimpleCov.start do
  add_filter '../lib/'
end

require 'minitest/autorun'
require 'ansa'
require 'webmock/minitest'

class AnsaTest < Minitest::Test
  def test_get_world_news_autogenerated_method
    stub_request(:get, "http://www.ansa.it/sito/notizie/mondo/mondo_rss.xml").
    with(
      headers: {
        'Accept'=>'*/*',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'User-Agent'=>'Ruby'
      }).
    to_return(status: 200, body: File.read("./test/responses/economia.xml"), headers: {})
    assert_equal "Ue a Ryanair, norme locali a personale",
      Ansa::get_world_news()[0].title
    assert_equal "'Regole Ue sono chiare, nessun negoziato su legge applicabile'",
      Ansa::get_world_news()[0].description
    assert_equal "http://www.ansa.it/sito/notizie/economia/2018/09/19/ue-a-ryanair-norme-locali-a-personale_283353ff-da55-4a8f-a447-363d7ff56f64.html",
      Ansa::get_world_news()[0].link
    assert_equal Time.parse("2018-09-19 17:35:35 +0200"),
      Ansa::get_world_news()[0].date
  end
end
