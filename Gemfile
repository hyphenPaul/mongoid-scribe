source 'https://rubygems.org'

# Declare your gem's dependencies in mongoid-scribe.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# To use a debugger
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :test do
  gem 'database_cleaner'
end

gem 'puma', '~> 3.7'
gem 'mongoid', '~> 6.1.0'
gem 'haml-rails'
gem 'sass-rails'
gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'jquery-rails'
