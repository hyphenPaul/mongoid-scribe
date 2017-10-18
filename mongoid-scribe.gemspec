$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mongoid/scribe/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mongoid-scribe"
  s.version     = Mongoid::Scribe::VERSION
  s.authors     = ["Sean-Paul Fenton"]
  s.email       = ["seanpaulfenton@gmail.com"]
  s.homepage    = "https://github.com/hyphenPaul/mongoid-scribe"
  s.summary     = "A visual representation of mongoid performance for Rails"
  s.description = "A visual representation of mongoid performance for Rails"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"
end

