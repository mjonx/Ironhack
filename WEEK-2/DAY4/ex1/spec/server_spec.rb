require_relative '../server'
require 'rspec'
require 'rack/test'
# require 'pry'

#bundle exec rspec

describe 'Server service' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  describe 'GET /' do
    it 'returns 200 OK' do
      get '/'
      expect(last_response.status).to eq(200)
      # expect(last_response.status).to be_ok
      # expect(last_response.status).not_to be_ok
    end

    #to check HTML in body
    it "includes 'hello'" do
      get '/'
      expect(last_response.body).to include("hello")
    end
  end

  describe 'POST /redirect' do
    it 'should redirect to home' do
      post '/redirect'
      expect(last_response).to be_redirect
    end
  end

  describe 'GET /home' do
    it 'redirects to /' do
      get '/home'
      expect(last_response).to be_redirect
      follow.redirect!
      expect(last_response).to eq('/')
    end
  end

end
