# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tradenity/version'

Gem::Specification.new do |spec|
  spec.name          = "tradenity"
  spec.version       = Tradenity::VERSION
  spec.authors       = ["Joseph Fouad"]
  spec.email         = ["tradenity@tradenity.com"]



  spec.summary       = %q{Access Tradenity eCommerce API.}
  spec.description   = %q{Access Tradenity eCommerce API.}
  spec.homepage      = "http://githun.com/tradenity/ruby-sdk"
  spec.license       = "APACHE 2"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'virtus', '>= 1.0.5'
  spec.add_runtime_dependency 'unirest', '>= 1.1.2'
  spec.add_runtime_dependency 'bcrypt', '>= 3.1.1'

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
