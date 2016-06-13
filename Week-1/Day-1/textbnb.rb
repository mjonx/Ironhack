class Home
  attr_reader(:name, :city, :capacity, :price)
  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Marjon's place", "Barcelona", 3, 65),
  Home.new("Alina's place", "Amsterdam", 2, 60),
  Home.new("Angela's place", "Nova Scotia", 4, 105),
  Home.new("Luuk's place", "Dalfsen", 5, 95),
  Home.new("Vince's place", "Dalfsen", 4, 85),
  Home.new("Tygo's place", "Raalte", 3, 52)
]



def list(homes)
  homes.each do |home|
    puts "#{home.name} in #{home.city}\n capacity: #{home.capacity}, price: $#{home.price}"
  end
end

puts "\nAvailable homes:\n\n"
list(homes)

# Sort by price or capacity
puts "How to you want to sort this list?"
answer = gets.chomp.downcase

if answer == "price"
  sorted_price = homes.sort_by {|p| p.price}
  list(sorted_price)

elsif answer == "capacity"
  sorted_capacity = homes.sort_by {|c| c.capacity}
  list(sorted_capacity)
else
  puts "Please choose 'price' or 'capacity'!"
end

#Select city
puts "In what city are you looking for a rental home?"
requested_city = gets.chomp

city = homes.select do |hm|
  hm.city == requested_city
end
list(city)

# #average price
# total_prices = homes.reduce(0.0) do |sum, hm|
#   sum + hm.price
# end
#
# puts "The average price is:"
# puts total_prices / homes.length

#Enter price
puts "What price should the rental home be?"
rental_price = gets.chomp.to_i

rental = homes.select do |hm|
  hm.price == rental_price
end
list(rental)
