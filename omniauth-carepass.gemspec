# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-carepass/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Matthew B. Jones"]
  gem.email         = ["matt@makifund.com"]
  gem.description   = %q{Aetna Carepass OAuth strategy for OmniAuth}
  gem.summary       = %q{Aetna Carepass OAuth strategy for OmniAuth}
  gem.homepage      = "https://github.com/matthewbjones/omniauth-carepass"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "omniauth-carepass"
  gem.require_paths = ["lib"]
  gem.version       = Omniauth::Carepass::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.0'
end
