require 'sinatra'
require 'sinatra/reloader'

get "/home" do
  erb(:home)
end

# get "/add" do
#   erb(:add)
# end

post "/calculate_add" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = first + second
  "The addition of #{first} and #{second} equals #{result}"
end

post "/calculate_substract" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = first - second
  "The substraction of #{first} and #{second} equals #{result}"
end

post "/calculate_multiply" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = first * second
  "The multiplication of #{first} and #{second} equals #{result}"
end

post "/calculate_divide" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = first / second
  "The division of #{first} and #{second} equals #{result}"
end
