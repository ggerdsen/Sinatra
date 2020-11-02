# require './config/environment'

# require 'sinatra'
class ApplicationController < Sinatra::Base

  before do
    content_type 'application/json'
  end

  get "/" do
    JSON.generate(message: "Welcome to the Sinatra Template!")
  end
  
  get "/api/v1/pom" do
    response = Faraday.new("https://opentdb.com/api.php?amount=1")
    results = JSON.parse(response.body, symbolize_names: true)
    binding.pry
  end

  # get "/api" do
  #   lat = params[:lat]
  #   lon = params[:lon]
  #
  #   response = Faraday.get("https://api.openweathermap.org/data/2.5/onecall") do |f|
  #     f.params['appid'] = ENV['OPEN_WEATHER_API_KEY']
  #     f.params['lat'] = lat
  #     f.params['lon'] = lon
  #     f.params['exclude'] = 'minutely,hourly'
  #     f.params['units'] = 'imperial'
  #   end
  #   parsed_json = JSON.parse(response.body, symbolize_names: true)
  #   parsed_json.to_json
  # end

end