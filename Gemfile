# frozen_string_literal: true
source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.0'

gem 'active_type'
gem 'bcrypt'
gem 'bootsnap', require: false
gem 'devise'
gem 'devise-bootstrapped', github: 'king601/devise-bootstrapped'
gem 'importmap-rails'
gem 'pg', '~> 1.1'
gem 'pgcli-rails'
gem 'puma', '~> 5.0'
gem 'rack-canonical-host'
gem 'rails', '~> 7.0.3'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem "view_component"



group :production do
  gem 'postmark-rails'
  gem 'sidekiq'
end

group :development do
  gem 'amazing_print'
  gem 'annotate'
  gem 'brakeman', require: false
  gem 'bundler-audit', require: false
  gem 'erb_lint', require: false
  gem 'letter_opener'

  gem 'rubocop', require: false
  gem 'rubocop-minitest', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'web-console'
end

group :development, :test do
  gem 'byebug'
  gem 'dotenv-rails'
  gem 'factory_bot_rails'
  gem 'rspec-rails', '~> 6.0.0.rc1'
end

group :test do
  gem 'capybara'
  gem 'minitest-ci', require: false
  gem 'selenium-webdriver'
  gem 'shoulda-context'
  gem 'shoulda-matchers'
  gem 'webdrivers'
end

gem "tailwindcss-rails", "~> 2.0"

gem "view_component-contrib", "~> 0.1.1"

gem "dry-initializer", "~> 3.1"
