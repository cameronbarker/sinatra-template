# frozen_string_literal: true

# Include all the gems listed in Gemfile
require "bundler"
Bundler.require
require "sinatra/activerecord"

# main app
class App < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  configure do
    set :root, File.dirname(__FILE__)
    set :public_folder, "public"
    set :database, {adapter: "sqlite3", database: "db.sqlite3"}

    register Sinatra::ActiveRecordExtension
  end

  configure :development do
    set :database, "sqlite3:forum-service.sqlite3"

    register Sinatra::Reloader
  end

  get "/" do
    @message = "Welcome Home!"

    erb :hello
  end
end
