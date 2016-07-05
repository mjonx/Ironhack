require 'sinatra'
require 'sinatra/reloader'
require './lib/login_service'

enable(:sessions)

get '/login' do
  erb :log_in
end

post '/login' do
  session[:current_user] = {
    username: params[:username],
    password: params[:password]
  }

  redirect to('/profile')
end

post '/logout' do
  session[:current_user] = nil

  redirect to('/login')
end

get '/profile' do
  user = session[:current_user]

  if user && LoginService.new(user).login
    erb :profile
  else
    redirect to('/login')
  end
end
