require 'sinatra'
require 'sinatra/reloader'


get '/' do
  erb :home
end

post '/redirect' do
  redirect to ('/home')
end
