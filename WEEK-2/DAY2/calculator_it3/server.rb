require 'sinatra'
require 'sinatra/reloader'

get "/home" do
  erb(:home)
end

post "/result" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  operation = params[:operation]

  if operation == "add"
    result = first + second
    sign = "+"

  elsif operation == "substract"
    result = first - second
    sign = "-"

  elsif operation == "multiply"
    result = first * second
    sign = "*"

  elsif operation == "divide"
    result = first / second
    sign = "/"
    
  end

  redirect to("/math_success/#{first}/#{second}/#{sign}/#{result}")

end

get "/math_success/:first/:second/:sign/:result" do
  @first = params[:first]
  @second = params[:second]
  @sign = params[:sign]
  @result = params[:result]

  erb :math_success
end
