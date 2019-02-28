# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tradenity/version'

Gem::Specification.new do |spec|
  spec.name          = "tradenity"
  spec.version       = Tradenity::VERSION
  spec.authors       = ["Joseph Fouad"]
  spec.email         = ["support@tradenity.com"]

  spec.summary       = %q{SDK for Tradenity eCommerce API.}
  spec.description   = %q{Client library for easy eCommerce app development with Tradenity eCommerce API.}
  spec.homepage      = "http://githun.com/tradenity/ruby-sdk"
  spec.license       = "Apache-2.0"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 1.9"

  spec.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  spec.add_runtime_dependency 'json', '~> 2.1', '>= 2.1.0'

  spec.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'
  spec.add_development_dependency 'vcr', '~> 3.0', '>= 3.0.1'
  spec.add_development_dependency 'webmock', '~> 1.24', '>= 1.24.3'
  spec.add_development_dependency 'autotest', '~> 4.4', '>= 4.4.6'
  spec.add_development_dependency 'autotest-rails-pure', '~> 4.1', '>= 4.1.2'
  spec.add_development_dependency 'autotest-growl', '~> 0.2', '>= 0.2.16'
  spec.add_development_dependency 'autotest-fsevent', '~> 0.2', '>= 0.2.12'

end
