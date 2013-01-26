# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bumpspark/version'

Gem::Specification.new do |gem|
  gem.name          = "bumpspark"
  gem.version       = Bumpspark::VERSION
  gem.authors       = ["Bruce Williams"]
  gem.email         = ["brwcodes@gmail.com"]
  gem.description = %q{Generates transparent PNG "bumpspark"-style sparklines. Use from Ruby directly or as a Rails helper generating an image tag w/ built-in data, as conceived by whytheluckystiff.}
  gem.summary       = %q{Generates "bumpspark"-style sparklines for Ruby & Rails}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^exe/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'chunky_png'
  gem.add_development_dependency 'rake'
end
