# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jfb/version'

Gem::Specification.new do |spec|
  spec.name          = "jfb"
  spec.version       = Jfb::VERSION
  spec.authors       = ["rCamposCruz"]
  spec.email         = ["rafaelcpcruz@hotmail.com"]

  spec.summary       = %q{Gem which interfaces ruby and JDBC.}
  spec.description   = %q{A very simple gem which interfaces JDBC's connections and ResultSet, making easier for simple usage of it's resources.}
  spec.homepage      = "https://github.com/rCamposCruz/jfb"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
