# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "monoceros/version"

Gem::Specification.new do |s|
  s.name          = "monoceros"
  s.version       = Monoceros::VERSION
#  s.platform      = Gem::Plaftorm::RUBY
  s.authors       = ["Johnneylee Jack Rollins"]
  s.email         = ["Johnneylee.Rollins@gmail.com"]
  s.homepage      = "http://github.com/Spaceghost/monoceros"

  s.summary       = "Authorization for plain old ruby."
  s.description   = "Authorization for plain old ruby."

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

end
