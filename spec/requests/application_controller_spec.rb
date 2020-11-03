require "./spec/spec_helper"

def app
  ApplicationController
end

RSpec.describe "ApplicationController" do
  it "responds with a welcome message" do
    get "/api/v1/single_trivia_question"

    body = JSON.parse(last_response.body, symbolize_names: true)

    expect(last_response.status).to eq(200)
    expect(body).to have_key(:response_code)
    expect(body[:response_code]).to eq(0)
    expect(body).to have_key(:results)
    expect(body[:results]).to be_an(Array)
    expect(body[:results].first).to be_a(Hash)
    expect(body[:results].first).to have_key(:category)
    expect(body[:results].first[:category]).to be_a(String)
    expect(body[:results].first).to have_key(:type)
    expect(body[:results].first[:type]).to be_a(String)
    expect(body[:results].first).to have_key(:difficulty)
    expect(body[:results].first[:difficulty]).to be_a(String)
    expect(body[:results].first).to have_key(:question)
    expect(body[:results].first[:question]).to be_a(String)
    expect(body[:results].first).to have_key(:correct_answer)
    expect(body[:results].first[:correct_answer]).to be_a(String)
    expect(body[:results].first).to have_key(:incorrect_answers)
    expect(body[:results].first[:incorrect_answers]).to be_an(Array)

  end
end
