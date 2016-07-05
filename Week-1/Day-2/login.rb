class Login
  def initialize(user, password)
    @users {
      :user => "Marjon"
      :password => "password1234"
    }
    @user = user
    @password = password
  end

  def validate_login
    return true if @user == @users[:user] && @password == @users[:password]
  end
end


puts "Username:"
user = gets.chomp
puts "Password:"
password = gets.chomp
