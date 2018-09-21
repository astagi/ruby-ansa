# Ansa Library for Ruby

Read news from [Ansa](http://www.ansa.it) 🗞

[![Gem Version](https://badge.fury.io/rb/ansa.svg)](https://badge.fury.io/rb/ansa)
[![Build Status](https://travis-ci.org/astagi/ruby-ansa.svg?branch=master)](https://travis-ci.org/astagi/ruby-ansa)
[![codecov](https://codecov.io/gh/astagi/ruby-ansa/branch/master/graph/badge.svg)](https://codecov.io/gh/astagi/ruby-ansa)

## Install

Add to your Gemfile

    gem 'ansa'

## Examples

Get all the news about soccer

    news = Ansa::get_soccer_news()
    p news[0].title

You can also use `get_news` method, specifying the category you want

    news = Ansa::get_news(Ansa::SOCCER)

For more see the documentation.
