require 'pry'
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
  Home.new("Ariel's place", "San Juan", 4, 49)
]

# ----- Collection method .each ----- #

homes.each do |hm|
  puts "#{hm.name} in #{hm.city}"
  puts "Price: $#{hm.price} a night\n\n"
end

# ----- Collection method .map ----- #

cities = homes.map do |hm|
  hm.city
end
puts "\nList of cities:"
puts cities

# cities = [
#   City.new("San Juan"),
#
# ]

prices = homes.map do |hm|
  hm.price
end

puts "\nAll prices:"
puts prices

#average price through .each
sum = 0
prices.each do |item|
  sum += item
end
puts "\nThe average price is $#{sum / prices.length}"

# ----- Collection method .reduce ----- #
#average price through .reduce
total_price = homes.reduce(0) do |sum, hm|
  sum + hm.price
end

puts "\nThe total of the prices it #{total_price}"
puts "The average price is #{total_price / homes.length}"

#average capacity through .reduce
total_capacity = homes.reduce(0.0) do |sum, hm|
  sum + hm.capacity
end
puts "\nThe total capacity it #{total_capacity}"
puts "The average capacity is #{total_capacity / homes.length}\n\n"

# ----- Collection method .each_with_index ----- #
#print home names with their listing number in front of it

homes.each_with_index do |hm, index|
  puts "Home #{index + 1}: #{hm.name}"
end

# ----- Collection method .select ----- #
san_juan_homes = homes.select do |hm|
  hm.city == "San Juan"
end

# puts san_juan_homes.name

san_juan_homes.each do |hm|
  puts "Homes in San Juan #{hm.name}"
end

# ---- #

high_capacity_homes = homes.select do |hm|
  hm.capacity >= 4
end

high_capacity_homes.each do |hm|
  puts "High capacity home: #{hm.name}"
end

home_41_dollars = homes.find do |hm|
  hm.price == 41
end

puts "\nFirst home that's 41 dollars: #{home_41_dollars.name}"

# ----- Collection method .sort ----- #
sorted = homes.sort do |home1, home2|
  home1.capacity <=> home2.capacity
end

sorted.each do |hm|
  puts "#{hm.name} has capacity for #{hm.capacity}"
end

sorted = homes.sort do |home1, home2|
  home1.name <=> home2.name
end

sorted.each do |hm|
  puts hm.name
end
