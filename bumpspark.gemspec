# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bumpspark'

Gem::Specification.new do |gem|
  gem.name          = "bumpspark"
  gem.version       = Bumpspark::VERSION
  gem.authors       = ["Bruce Williams"]
  gem.email         = ["brwcodes@gmail.com"]
  gem.description = %q{Generates transparent PNG and Data URI bumpspark-style sparklines. Use from Ruby directly or as a Rails helper.}
  gem.summary       = %q{Generates bumpspark-style sparklines for Ruby & Rails}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.bindir        = 'exe'
  gem.executables   = gem.files.grep(%r{^exe/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'chunky_png'
  gem.add_development_dependency 'rake'
end
