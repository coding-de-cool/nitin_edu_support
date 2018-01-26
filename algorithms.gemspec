$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "algorithms/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "algorithms"
  s.version     = Algorithms::VERSION
  s.authors     = ["coding-de-cool"]
  s.email       = ["coding-de-cool@users.noreply.github.com"]
  s.homepage    = "https://nitin.edu"
  s.summary     = "Algorithms"
  s.description = "Ruby Program for Algorithms."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'mysql2'
end
