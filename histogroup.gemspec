# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "histogroup"
  s.version     = '3.0.1'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Appliomics, LLC"]
  #s.email       = [""]
  #s.homepage    = ""
  s.summary     = %q{Wrapper for image fingerprinting}
  s.description = %q{Wrapper for image fingerprinting}

  s.files         = `git ls-files`.split("\n")
#  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_development_dependency 'rake-compiler'
  s.add_development_dependency 'rspec', '~> 2.0'
  s.extensions << 'ext/histogroup/extconf.rb'
  s.requirements << 'libjpeg'
  s.requirements << 'libpng'
  s.requirements << 'libtiff'
end

