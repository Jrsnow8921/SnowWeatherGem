# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'SnowWeather/version'

Gem::Specification.new do |spec|
  spec.name          = "SnowWeather"
  spec.version       = SnowWeather::VERSION
  spec.authors       = ["Justin Snow"]
  spec.email         = ["jrsnow8921@gmail.com"]

  spec.summary       = %q{Simple weather gem to interact with Weather Undergounds Api}
  spec.description   = %q{Simple weather gem to interact with Weather Undergounds Api}
  spec.homepage      = "https://github.com/Jrsnow8921/SnowWeatherGem.git"
  spec.license       = "MIT"

  #if spec.respond_to?(:metadata)
  #  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  #else
  #  raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  #end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rest-client", ">= 1.8.0"
  spec.add_development_dependency "em-resolv-replace", ">= 1.1.3"
  spec.add_development_dependency "eventmachine", ">= 1.0.7"
end
