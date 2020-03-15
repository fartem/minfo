require 'simplecov'
SimpleCov.start do
  add_filter '/test/'
end

if ENV.include? 'CODECOV_TOKEN'
  require 'codecov'
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end

require 'minitest/autorun'
