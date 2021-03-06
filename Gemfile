source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }
ruby '2.6.2'
gem 'rails', '~> 5.2.2'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end
group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
group :test do
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'administrate'
gem 'bootstrap', '~> 4.1', '>= 4.1.1'
gem 'bourbon'
gem 'devise'
gem 'cancancan', '~> 2.2'
gem 'high_voltage'
gem 'jquery-rails'
gem 'will_paginate', '3.1.0'
gem 'bootstrap-will_paginate'
gem 'alertifyjs-rails'
gem 'pundit'
gem 'carrierwave'
gem 'mini_magick'
gem 'searchkick', '~> 3.1'
gem 'friendly_id', '~> 5.1.0' # Note: You MUST use 5.0.0 or greater for Rails 4.0+
gem 'elasticsearch', '~> 6.1'
gem 'faraday_middleware-aws-sigv4'
gem 'figaro'
gem 'fog-aws'
gem 'omniauth-facebook'
gem 'omniauth-twitter'
gem 'omniauth-github'
gem 'omniauth-linkedin'
gem "omniauth-google-oauth2"

group :development do
  gem 'better_errors'
  gem 'awesome_print', '~> 1.8'
  gem 'guard', '~> 2.14', '>= 2.14.2'
  gem 'guard-livereload', '~> 2.5', '>= 2.5.2'
  gem 'guard-bundler', '~> 2.1'
  # gem 'guard-rubocop'
  gem 'binding_of_caller'
  gem 'hub', :require=>nil
  gem 'rails_layout'
end
group :development, :test do
  gem "sqlite3", "~> 1.3.6"
end
group :production do
  # gem 'pg'
  gem 'rails_12factor'
end
