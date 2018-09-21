# encoding: utf-8

Gem::Specification.new do |s|
  s.name               = "ansa"
  s.version            = "0.0.1"
  s.platform           = Gem::Platform::RUBY
  s.authors            = ["Andrea Stagi"]
  s.email              = ["stagi.andrea@gmail.com"]
  s.description        = "Read all the news from http://www.ansa.it"
  s.homepage           = "https://github.com/astagi/ruby-ansa"
  s.summary            = "Read all the news from http://www.ansa.it"
  s.rubyforge_project  = "ansa"
  s.require_paths      = ["lib"]

  s.add_development_dependency "simplecov"
  s.add_development_dependency "webmock"
  s.add_development_dependency "rake"
  s.add_development_dependency "minitest"
  s.add_development_dependency "yard"
  s.add_development_dependency "codecov", ">= 0.1.10"

  s.extra_rdoc_files = ['README.md']
  s.rdoc_options = ['--charset=UTF-8']

  s.files = [
    'LICENSE',
    'README.md',
    'lib/ansa.rb',
    'lib/ansa/client.rb',
    'lib/ansa/constants.rb',
    'lib/ansa/news.rb'
  ]

end
