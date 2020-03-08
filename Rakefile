require 'rake/testtask'
require 'rake/clean'

task default: %w[clean test]

desc 'Run all unit tests'
Rake::TestTask.new(:test) do |test|
  test.pattern = 'test/**/test_*.rb'
end
