# frozen_string_literal: true

# Include all the gems listed in Gemfile
require 'bundler'
Bundler.require

module LivingCostCalc
  class App < Sinatra::Base
    configure do
      set :root, File.dirname(__FILE__)
      set :public_folder, 'public'

      register Sinatra::ActiveRecordExtension
    end

    configure :development do
      register Sinatra::Reloader
    end


    get '/results' do
      city = params[:city]
      country = params[:country]

      # if country or city names have spaces, process accordingly
      esc_city = ERB::Util.url_encode(city) # e.g. "St Louis" becomes 'St%20Louis'
      esc_country = ERB::Util.url_encode(country) # e.g. "United States" becomes 'United%20States'

      url = URI("https://cost-of-living-prices-by-city-country.p.rapidapi.com/get-city?city=#{esc_city}&country=#{esc_country}")

      conn = Faraday.new(
        url: url,
        headers: {
          'X-RapidAPI-Key' => ENV['RapidAPIKey'],
          'X-RapidAPI-Host' => ENV['RapidAPIHost']
        }
      )

      response = conn.get

      @code = response.status
      @results = response.body

      erb :results
    end

  end
end
