source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.3"

gem "rails", "~> 7.0.2", ">= 7.0.2.3"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.6"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "redis", "~> 4.0"

gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "sassc-rails"
gem 'bootstrap', '~> 5.1.3'

gem 'devise'
gem 'omniauth'
gem 'omniauth-google-oauth2'
gem 'omniauth-rails_csrf_protection', '~> 1.0'

gem 'rails_admin'
gem 'cancancan'

gem 'nonschema_migrations', '~> 6.5'
gem "ransack", "~> 2.6"
gem 'kaminari'

gem 'google-analytics-rails', '1.1.1'

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'dotenv-rails'
end

group :development do
  gem "web-console"
  gem 'pry'
end
