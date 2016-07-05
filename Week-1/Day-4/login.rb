class Login
  def initialize(user,password)
    @users = {
      :user => "albz",
      :password => "letmein!"
    }
    @user = user
    @password = password
  end
  def validate_login
    return true if @user = @users[:user] && @password == @users[:password]
  end
end
class AI
  def self.powerful_algorithm
    puts "Ask me anything you want. ANYTHING!"
    input_string = gets.chomp
    puts "Ok, the answer is:"
    puts input_string.size
  end
end
puts "Username:"
user = gets.chomp
puts "Password:"
password = gets.chomp
Login.new(user,password).validate_login == true ? AI.powerful_algorithm : puts("Incorrect!")
