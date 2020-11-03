require 'pry'
require 'sinatra'
class ApplicationController < Sinatra::Base

  get "/api/v1/single_trivia_question" do
    conn = Faraday.get("https://opentdb.com/api.php?amount=1")
    body = JSON.parse(conn.body, symbolize_names: true)
    body.to_json
  end
  
end