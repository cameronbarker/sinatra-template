# frozen_string_literal: true

source "https://rubygems.org"

gem "activerecord"
gem "faraday"
gem "haml"
gem "puma"
gem "rake"
gem "sinatra"
gem "sinatra-activerecord"
gem "sinatra-contrib"

group :production do
  gem "pg"
end

group :development do
  gem "dotenv"
  gem "pry"
  gem "sqlite3"
  gem "standard"
  gem "tux"
end

group :development, :test do
  gem "rspec"
end
