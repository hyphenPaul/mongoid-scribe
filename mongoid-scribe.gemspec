$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mongoid/scribe/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mongoid-scribe"
  s.version     = Mongoid::Scribe::VERSION
  s.authors     = [""]
  s.email       = ["seanpaulfenton@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Mongoid::Scribe."
  s.description = "TODO: Description of Mongoid::Scribe."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"
end
