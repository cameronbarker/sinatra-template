# frozen_string_literal: true

source 'https://rubygems.org'

gem 'activerecord', '~> 7.0'
gem 'faraday', '~> 2.7'
gem 'haml', '~> 6.1'
gem 'puma', '~> 6.3'
gem 'rake', '~> 13.0'
gem 'sinatra', '~> 3.0'
gem 'sinatra-activerecord', '~> 2.0'
gem 'sinatra-contrib', '~> 3.0'

group :production do
  gem 'pg', '~> 1.5'
end

group :development do
  gem 'dotenv', '~> 2.8'
  gem 'pry', '~> 0.14.2'
  gem 'sqlite3', '~> 1.6'
  gem 'standard', '~> 1.30'
  gem 'tux', '~> 0.3.0'
end

group :development, :test do
  gem 'rspec', '~> 3.12'
end
