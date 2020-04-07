# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hippomarkio/version'

Gem::Specification.new do |gem|
  gem.name          = "hippomarkio"
  gem.version       = HippoMarkio::VERSION
  gem.authors       = ["hippohack"]
  gem.email         = ["benzoh.g@gmail.com"]
  gem.description   = %q{Import/export utility for Netscape Bookmark Format}
  gem.summary       = %q{Handles parsing and building Netscabe Bookmark Format in Ruby way.}
  gem.homepage      = "https://github.com/hippohack/hippomarkio"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'nokogiri'
  gem.add_development_dependency 'rspec', '~> 2.11'
  gem.add_development_dependency 'pry-nav'
  gem.add_development_dependency 'guard-rspec'

end
