rng = 1..12

rng.each do |number|
  puts "The next number in the range is: #{number}"
end

double = rng.map do |number|
  number * 2
end

puts double
