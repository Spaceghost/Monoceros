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
  s.license       = "MIT"

  s.summary       = "Authorization for plain old ruby."
  s.description   = <<-EOF
    Authorization for plain old ruby.
  EOF
  s.post_install_message = <<-EOF
    Thanks for installing Monoceros!
  EOF

  s.required_ruby_version = '>= 1.9.2'
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'rspec', '~> 2.7.0'
  s.add_development_dependency 'turnip', '~> 0.2.0'
  s.add_development_dependency 'fabrication', '~> 1.2.0'
  s.add_development_dependency 'ffaker', '~> 1.10.1'
  s.add_development_dependency 'timecop', '~> 0.3.5'

  # I'm kind of a jerk, so raise an issue if you have a problem with me
  # including spork, guard, etc. in the gemspec's development dependencies.

  s.add_development_dependency 'spork', '~> 0.8.5'
  s.add_development_dependency 'guard', '~> 0.9.1'
  s.add_development_dependency 'guard-rspec', '~> 0.5.9'
  s.add_development_dependency 'guard-spork', '~> 0.4.1'
  s.add_development_dependency 'guard-bundler', '~> 0.1.3'
  s.add_development_dependency 'rb-readline', '~> 0.4.2'

  # In fact, if you can help me refactor this so these are in the Gemfile
  # and the spec_helper.rb rescues from any load errors if you don't want
  # use spork, I'd be very happy.
end

