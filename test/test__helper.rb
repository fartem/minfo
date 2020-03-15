require 'simplecov'

SimpleCov.start
if ENV.include? 'CODECOV_TOKEN'
  require 'codecov'
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end

require 'minitest/autorun'
