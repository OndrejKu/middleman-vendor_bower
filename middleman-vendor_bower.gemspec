# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'middleman-vendor_bower/version'

Gem::Specification.new do |s|
  s.name        = 'middleman-vendor_bower'
  s.version     = Middleman::VendorBower::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Mariano Cavallo"]
  s.email       = ["mariano.cavallo@gmail.com"]
  s.homepage    = "https://github.com/mcavallo/middleman-vendor_bower"
  s.summary     = %q{Adds the bower directory to the sprockets path so that you can require bower components.}
  s.description = %q{Adds the bower directory to the sprockets path so that you can require bower components. Relies on the .bowerrc on the root of the project to locate the right directory.}
  s.license     = "MIT"

  s.rubyforge_project     = "middleman-vendor_bower"
  s.files                 = `git ls-files -z`.split("\0")
  s.require_paths         = ["lib"]
  s.required_ruby_version = '>= 1.9.3'

  s.add_dependency("middleman-core", ["~> 3.3"])
end
