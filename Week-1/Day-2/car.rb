class Car
  def initialize(noise) #constructor
  #set a default as a fall back
  #def initialize(noise = "brammmm")
    @noise = noise #instance variable
  end
  def make_noise #instance method
    puts @noise
  end
  def self.model #class method
    puts "Dodge"
  end
  def self.speed_control
    puts "What's your speed?"
    speed = gets.chomp.to_i
    if speed >= 100
      puts "You're going too fast!!"
    else
      puts "You're within the speed limit!"
    end
  end
end

my_car = Car.new("Broom") #instance
loud_car =  Car.new("BROOOOOOOOM")

#
# my_car.make_noise
# loud_car.make_noise

Car.model #calling class method
Car.speed_control
