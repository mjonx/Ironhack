#hash
pizza = {
  :cheese => {
    :italian => ['Mozarella', 'asiago'], #hash in hash
    :french => 'brie' #hash in hash
  }
}

puts pizza[:cheese][:italian][1] #to print Asiago

#nested conditionals
pizza.each do |key, value|
  if key == :cheese
    value.each do |country, value|
      if country == :italian
        value.each do |cheese|
          if cheese == 'asiago'
            puts cheese
          end
        end
      end
    end
  end
end

array = [[1,2],[3,4]]

array.each do |large_array|
  large_array.each do |number|
    puts number
  end
end

#--------------------#

s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each do |sub_array|
    sub_array.each do |item|
        puts item
    end
end

s.each do |sub_array|
    puts "#{sub_array[0]} and #{sub_array[1]}"
end

#--------------------#

total = [1, 4, 10].reduce {
  |sum, x| sum + x
}

#reduce
array = [4, 6, 8]
base_price = 10

total = [1, 4, 10].reduce(base_price){
  |sum, x| sum + x
}

puts total

puts ['casa', 'masa', 'pepino'].grep(/as/)


######## CLASSES #########

class Car
  attr_reader :color, :price

  @@counter = 0 #class variable. belongs to the class, not for individual instance - you have to call a method to use it. use .self

  def initialize(color) #instance method
    @color = color #instance variable
    @price = nil #(have to put nil, otherwise it will give an error)
    @@counter += 1
  end

  def calculate_price(price)
    total = base_price + 100
  end

  def self.counter #
    @@counter
  end

end

ferarri = Car.new("red")
masarati = Car.new("black")

p ferarri.color
p masarati.color


######### MODULES #########
module Turbo
  def nos
    @speed += 1000
  end
end

class Car
  include Turbo
  # attr_reader :speed
  def initialize #because speed is a set value, do not put (speed) because it does not have to be dynamic
    @speed = 100
  end

  def speed
    @speed
  end
end



car = Car.new
puts car.speed
puts car.nos
