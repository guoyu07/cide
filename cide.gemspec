# coding: utf-8

Gem::Specification.new do |s|
  s.name          = 'cide'
  s.version       = '0.4.0'
  s.authors       = ['zimbatm']
  s.email         = ['zimbatm@zimbatm.com']
  s.summary       = 'CI docker runner'
  s.description   = <<DESC
cide makes it easy to reproduce CI builds on the developer computer by
providing the same docker environment.
DESC
  s.homepage      = 'https://github.com/zimbatm/cide'
  s.license       = 'MIT'

  s.executables   = ['cide']
  s.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  s.test_files    = `git ls-files spec`.split($INPUT_RECORD_SEPARATOR)
  s.require_paths = ['lib']

  s.required_ruby_version = '>= 1.9.3'

  s.add_runtime_dependency 'thor', '~> 0.19'
  s.add_runtime_dependency 'virtus', '~> 1.0'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'activesupport'
end
