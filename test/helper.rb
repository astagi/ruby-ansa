require 'simplecov'

SimpleCov.command_name 'Unit Tests'
SimpleCov.start do
  add_filter '../lib/'
end

require 'codecov'
SimpleCov.formatter = SimpleCov::Formatter::Codecov

require 'minitest/autorun'
