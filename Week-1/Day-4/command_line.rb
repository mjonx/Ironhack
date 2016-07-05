class User
  attr_reader :name, :password
  def initialize(name, password)
    @name = name
    @password = password
  end
end

class Name < User
  def initialize(name)
    super(name)
  end
  
    def get_name
      puts "Please enter your name"
      name = gets.chomp
    end
end

class Password < User
  def initialize(password)
    super(password)
  end

  def get_password
    puts "Please enter your password:"
    password = gets.chomp.downcase
    if password == "ladybug"
      puts "Password correct"
    else
      puts "Wrong password!"
    end
  end
end

# user = User.new(name, password)

Name.get_name
Password.get_password
