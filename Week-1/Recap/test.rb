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
