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


# homes.each { |hm|
#   puts "#{hm.name} in #{hm.city} \n Price: $#{hm.price} a night"
# }

# cities = homes.map do |hm|
#   hm.city
# end
#
# puts cities

prices = homes.map do |amount|
  amount.price
end

# puts prices

total_of_prices = prices.reduce{|sum,x| sum + x}
puts total_of_prices

average = total_of_prices / homes.length
puts average

total_capacities = homes.reduce(0.0) do |sum, hm|
  sum + hm.capacity
end

# puts total_capacities

puts "The average capacity is:"
puts total_capacities / homes.length

# #each_with_index
# homes.each_with_index do |hm, index|
#   puts "Home Number #{index + 1}: #{hm.name}"
# end

#select -- used to filter an array
# Homes in San Juan
san_juan_homes = homes.select do |hm|
  # Keep hm only if its city is "San Juan"
  hm.city == "San Juan"
end


puts "Homes in San Juan are:"
#This can be done better?
san_juan_homes.each do |hm|
  puts hm.name
end


sorted = homes.sort do |home1, home2|
  # Compare the two homes by their capacity
  home1.capacity <=> home2.capacity
end
