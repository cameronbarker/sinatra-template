# frozen_string_literal: true

# Include all the gems listed in Gemfile
require 'bundler'
Bundler.require


class App < Sinatra::Base
  configure do
    set :root, File.dirname(__FILE__)
    set :public_folder, 'public'

    register Sinatra::ActiveRecordExtension
  end

  configure :development do
    register Sinatra::Reloader
  end


  get '/' do
    @message = 'Welcome Home!'

    erb :index
  end

end
