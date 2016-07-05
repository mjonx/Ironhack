require "pry"

class Car
  # attr_reader :city
  def initialize (sound = "broom broom")#constructor
    @sound = sound
    @city = [] #empty array
  end
  # def make_sound #instance method
  #   puts @sound
  # end
  def add_city(city)
    @city.push(city)
  end
  # def visited_one (save = false)
  #   if save
  #     IO.write("visited_cities.txt", @city)
  #   else
  #     puts "Last year I visited the following cities:"
  #     @city.each do |current_city|
  #       puts "- #{current_city}"
  #   end
  # end

  end
  def visited_two
    puts "During my lastest trip I visited the following cities:"
    @city.each do |current_city|
      puts "- #{current_city}"
    end
  end
end

class RacingCar < Car
  def make_sound
    puts "BROOOOOOOOOOOOOOOOM"
  end
end


my_car = Car.new("Broom")
another_car = Car.new("Brim Brim")

my_car.sound
another_car.sound

my_car.add_city("Amsterdam")
my_car.add_city("Barcelona")
my_car.add_city("London")

another_car.add_city("New York")
another_car.add_city("Seattle")

# cities.each do |a|
#   print a.city
# end


my_car.visited_one(true)
another_car.visited_two

racing_car = RacingCar.new
racing_car.make_sound
