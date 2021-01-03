require 'English'

Gem::Specification.new do |s|
  s.required_ruby_version = '2.5.1'

  s.name = 'minfo'
  s.version = '0.1.0'

  s.license = 'Apache 2.0'
  s.summary = 'Tiny library for displaying memory usage on Linux'
  s.description = 'Get memory info of the system'
  s.authors = ['Artem Fomchenkov']
  s.email = 'jaman.smlnsk@gmail.com'
  s.homepage = 'http://github.com/fartem/minfo'

  s.test_files = s.files.grep(%r{^(test)/})

  s.extra_rdoc_files = ['README.md']
  s.add_development_dependency 'codecov', '0.1.16'
  s.add_development_dependency 'minitest', '5.14.0'
  s.add_development_dependency 'rake', '12.3.3'
  s.add_development_dependency 'rubocop', '1.7'
  s.add_development_dependency 'simplecov', '0.18.5'
end
