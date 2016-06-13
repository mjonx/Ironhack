# name = "Marjon"
#
# puts "My name is " + name + "!" #concatenation
# puts "My name is #{name}!" #interpolation
#
# puts name.class #find out what type of variable it is
# puts "The variable name is #{name.class}"
#
# num = 12.5
# #to get a float, one number needs a .
# puts 40 / 50
# puts 40 / 50.0
#
# num = num.to_s #makes it a string - also to_i and to_f
# puts num.class


#arrays (ordered list)
sweets = []
sweets = ["Cookies"]
sweets = ["Cookies", "Cake", "Ice cream", "Pie"]

#arrays start with 0
puts sweets[0] #cookies
#negative means you start from the last item in the arrays
puts sweets[-1] #Pie
puts sweets [99] #returns nil
puts sweets.size #prints 4

#add items to array
sweets.push ("Candy bar")
puts sweets.size #prints 5


# #hashes (non ordered list)
# pizza = {
#   cheese: "Mozarella",
#   sauce: "Tomato"
# }
#
# puts pizza[:sauce] #prints Tomato
#
# #symbols - used as identifiers
#
# #conditionals - compares and returns true or false
#
# #variable assignment
# puts i = 1
#
# #equility comparison
# puts i == 1
#
# #equivalence
# puts i === 1

fruits = ["Orange", "Banana", "Peach"]

fruits.each do |single_fruit|
  puts single_fruit
end
#
# classmates = ["Alina", "Marjon", "Tatjana"]
#
# classmates.each do |name|
#   puts "Hello #{name}"
# end

input = [1, 2, 3]

output = input.map do |item|
  item+1
end

puts input
puts output

#map
cities = ["miami", "madrid", "barcelona"]

cap_cities = cities.map do |caps|
  caps.capitalize
end

puts cap_cities

#reduce
input = [1, 2, 3]

output = input.reduce do |final_total, current_item|
  final_total + current_item
end

puts output

#grep

#find

#sort
