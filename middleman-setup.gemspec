# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "middleman-setup/pkg-info"

Gem::Specification.new do |s|
  s.name        = Middleman::Setup::PACKAGE
  s.version     = Middleman::Setup::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Lucia Escanellas"]
  s.email       = ["raviolicode@gmail.com"]
  s.homepage    = "http://github.com/raviolicode/middleman-setup"
  s.summary     = Middleman::Setup::TAGLINE
  s.description = Middleman::Setup::TAGLINE
  s.license     = "MIT"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # Runtime dependencies
  s.add_runtime_dependency "middleman-core", [">= 3.0.0"]

  # Development dependencies
  s.add_development_dependency "rspec"
  s.add_development_dependency "rake"
end
