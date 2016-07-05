print "Your name please"
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
    user_input.gsub!(/s/, "th")
else
    print "There's no S!"
end

puts "Your string is #{user_input}"
