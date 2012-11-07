# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'geofsh/version'

Gem::Specification.new do |gem|
  gem.name          = "geofsh"
  gem.version       = Geofsh::VERSION
  gem.authors       = ["Jon Pagano"]
  gem.email         = ["jonathanpagano@gmail.com"]
  gem.description   = %q{Geolocation Form Submission Helper}
  gem.summary       = %q{Provides latitude and longitude from HTML5 geolocation API and automatically places them in corresponding form fields}
  gem.homepage      = "https://github.com/joofsh/geofsh"

  gem.add_dependency "railties", "~> 3.1"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
