require 'simplecov'

SimpleCov.command_name 'Unit Tests'

require 'codecov'
SimpleCov.formatter = SimpleCov::Formatter::Codecov

SimpleCov.start do
  add_filter '../lib/'
end

require 'minitest/autorun'
