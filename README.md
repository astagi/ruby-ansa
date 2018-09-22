# Ansa Library for Ruby

Read news from [Ansa](http://www.ansa.it) 🗞

[![Yard Docs](http://img.shields.io/badge/yard-docs-blue.svg)](https://www.rubydoc.info/gems/ansa/1.1.1/)
[![Gem Version](https://badge.fury.io/rb/ansa.svg)](https://badge.fury.io/rb/ansa)
[![Build Status](https://travis-ci.org/astagi/ruby-ansa.svg?branch=master)](https://travis-ci.org/astagi/ruby-ansa)
[![codecov](https://codecov.io/gh/astagi/ruby-ansa/branch/master/graph/badge.svg)](https://codecov.io/gh/astagi/ruby-ansa)

## Install

Add to your Gemfile

    gem 'ansa'

## Usage

Import using

    require 'ansa'

Get all the news about soccer

    news = Ansa::get_soccer_news()
    puts news[0].title

You can also use `get_news` method, specifying the category you want

    news = Ansa::get_news(Ansa::SOCCER)

For more methods see the [documentation](https://www.rubydoc.info/gems/ansa/1.1.1/).

## Example

    require 'ansa'

    puts "\n⚽️  SOCCER NEWS ⚽️\n\n"

    begin
      Ansa::get_soccer_news.each do |news|
        puts "🥅  [#{news.date.strftime("%d/%m %H:%M:%S")}] #{news.title}"
        puts news.description
        puts "\n"
      end
    rescue Ansa::AnsaError
      puts "🚨  Something went wrong, news not available"
    end
