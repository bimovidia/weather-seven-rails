# -*- encoding: utf-8 -*-
require File.expand_path('../lib/weather-seven-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["bimovidia"]
  gem.email         = ["bimo.wijoyo@gmail.com"]
  gem.description   = "I like Weather 7 fonts. I like the asset pipeline. I like semantic versioning. If you do too, you're welcome."
  gem.summary       = "an asset gemification of the Weather 7 icon font library"
  gem.homepage      = "https://github.com/bimovidia/weather-seven-rails"
  gem.licenses      = ["MIT", "SIL Open Font License"]

  gem.files         = Dir["{app,lib}/**/*"] + ["LICENSE", "Rakefile", "README.md"]
  gem.test_files    = Dir["test/**/*"]
  gem.name          = "weather-seven-rails"
  gem.require_paths = ["lib"]
  gem.version       = WeatherSeven::Rails::VERSION

  gem.add_dependency "railties", ">= 3.2"

  gem.add_development_dependency "activesupport"
  gem.add_development_dependency "sass-rails"

  gem.required_ruby_version = '>= 1.9.3'
end
