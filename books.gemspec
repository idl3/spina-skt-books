$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "spina/books/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "spina-skt-books"
  s.version     = Spina::Items::VERSION
  s.authors     = ["Ernest Sim"]
  s.email       = ["ernest.codes@gmail.com"]
  s.homepage    = "http://www.methodnow.com"
  s.summary     = "Books system for Spina"
  s.description = "Plugin for Spina CMS to include books on your website"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0"

  s.add_development_dependency "sqlite3"
  s.add_dependency 'carrierwave'
  s.add_dependency 'mini_magick'
end
