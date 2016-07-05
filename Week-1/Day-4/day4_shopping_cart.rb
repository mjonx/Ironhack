class ShoppingCart
  def initialize
    @items = []
  end
  def add_item(item)
    @items.push(item)
  end
  def show_items
    @items.each do |single_item|
      puts "#{single_item.name}: #{single_item.price}"
    end
  end
  def cost
    total = 0
    @items.each do |item|
      total += item.price
    end
    return total
  end
end

class Item
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end
end

class Apples < Item
  def initialize (name, price)
    super(name, price)
    number_of_apples = #number of times apples were added
    if number_of_apples % 2 == 0
      price = @price / 2
    else
      price = @price
    end
  end
end

# #this is what i think it should be
# items = {
#   :apples => 10,
#   :oranges => 5,
#   :grapes => 15,
#   :bananas => 20,
#   :watermelons => 50
# }

#this is what I have now to add items to the cart
apples = Item.new("Apples", 10)
oranges = Item.new("Oranges", 5)
grapes = Item.new("Grapes", 15)
bananas = Item.new("Bananas", 20)
watermelons = Item.new("Watermelons", 50)

my_cart = ShoppingCart.new

my_cart.add_item(apples)
my_cart.add_item(bananas)
my_cart.add_item(bananas)

my_cart.show_items

puts "#{'-'*20}\nTotal: $#{my_cart.cost}"
