# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.1'

gem 'bootsnap', require: false
gem 'faker'
gem 'figaro'
gem 'grape'
gem 'grape-entity'
gem 'grape-swagger'
gem 'grape-swagger-entity'
gem 'grape-swagger-representable'
gem 'httparty'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.6'
gem 'redis', '~> 4.0'
gem 'sprockets-rails'

group :development, :test do
  gem 'pry'
end

group :development do
end

group :test do
  gem 'rspec-rails', '~> 6.0.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
