# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yadmin/version'

Gem::Specification.new do |spec|
  spec.name          = "yadmin"
  spec.version       = Yadmin::VERSION
  spec.authors       = ["Eugene Sheverdin"]
  spec.email         = ["me@scaint.name"]

  spec.summary       = %q{Yet Another Admin for Rails}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
