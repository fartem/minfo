require 'rake/testtask'
require 'rake/clean'

task default: %w[clean test rubocop]

desc 'Run all unit tests'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

require 'rubocop/rake_task'
desc 'Run Rubocop validation'
RuboCop::RakeTask.new(:rubocop) do |task|
  task.fail_on_error = true
end
