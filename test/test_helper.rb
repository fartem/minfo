require 'simplecov'

SimpleCov.start do
  track_files 'lib/**/*.rb'
end

if ENV.include? 'CODECOV_TOKEN'
  require 'codecov'
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end

require 'minitest/autorun'
