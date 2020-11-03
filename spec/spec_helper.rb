require 'capybara/rspec'
require 'capybara/dsl'
require 'rspec'
require 'rack/test'
require 'faraday'
require "./app/controllers/application_controller"

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.include Rack::Test::Methods
  config.include Capybara::DSL

  config.order = 'default'
end