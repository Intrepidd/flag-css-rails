# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'flag/css/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "flag-css-rails"
  spec.version       = Flag::Css::Rails::VERSION
  spec.authors       = ["Adrien Siami"]
  spec.email         = ["adrien.siami@homestay.com"]

  spec.summary       = "CSS flags for the asset pipeline"
  spec.description   = "Gemify the SVG flags from https://github.com/7kfpun/flag-css"
  spec.homepage      = "http://github.com/Intrepidd/flag-css-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
