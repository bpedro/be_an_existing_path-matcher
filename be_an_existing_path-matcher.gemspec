# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'be_an_existing_path/matcher/version'

Gem::Specification.new do |spec|
  spec.name          = 'be_an_existing_path-matcher'
  spec.version       = BeAnExistingPath::Matcher::VERSION
  spec.authors       = ['Bruno Pedro']
  spec.email         = ['bpedro@brunopedro.com']
  spec.summary       = 'RSpec matchers that checks if a path exists.'
  spec.description   = 'An RSpec matcher that checks if a given path exists.'
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split('\x0')
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)\//)
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_dependency 'rspec', '~> 3.2.0'
end
