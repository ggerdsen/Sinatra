require "spec_helper"
require "./app/controllers/application_controller"
# require 'sinatra'
# def app
#   ApplicationController
# end

describe "ApplicationController" do
  it "responds with a welcome message" do
    get "/"
    # get "/api/v1/pom"
    expect(last_response.status).to eq(200)
    body = JSON.parse(last_response.body, symbolize_names: true)
    
    # expect(body[:message]).to include("Welcome to the Sinatra Template!")

  end
end