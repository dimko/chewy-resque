# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chewy/resque/version'

Gem::Specification.new do |spec|
  spec.name          = "chewy-resque"
  spec.version       = Chewy::Resque::VERSION
  spec.authors       = ["Dimko"]
  spec.email         = ["deemox@gmail.com"]
  spec.summary       = %q{Resque integration for chewy}
  spec.description   = %q{Resque atomic & urgent strategies for Chewy gem}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "chewy", "~> 0.6.2"
  spec.add_dependency "resque"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake",    "~> 10.0"
end
