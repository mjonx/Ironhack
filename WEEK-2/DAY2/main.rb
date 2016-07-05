require 'sinatra'
require 'sinatra/reloader'

enable(sessions)

get '/' do
  "This is my super web app"
end

get '/about' do
  erb :about
end

get '/hi' do
  @name = session[:username]
  erb :hi
end

get '/currenttime' do
  @time = Time.new
  erb :currenttime
end

get '/fruits' do
  @fruits = %w(oranges lemons apples)
  erb :fruits
end

get '/users/:username' do
  session[:username] = params[:username]
  @username = params[:username]
  erb :user
end

get '/hours' do
  @hours = Time.now
  erb :hours
end
