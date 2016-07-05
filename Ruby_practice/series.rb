series = {
    suits: 5,
    scandal: 4,
    weeds: 5,
    scorpion: 3,
    californication: 4
}

puts "What do you want to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all series."
puts "-- Type 'delete' to delete a movie."
choice = gets.chomp.downcase

case choice
when "add"
    puts "What serie do you want to add?"
    title = gets.chomp
    if
        series[title.to_sym] = nil
            puts "What rating do you want to give to #{title}?"
        rating = gets.chomp
        series[title.to_sym] = rating.to_i
            puts "The serie '#{title}' was added with a rating of #{rating}!"
    else
        puts "That serie already exists!"
    end

when "update"
    puts "What serie do you want to update?"
    title = gets.chomp
    if series[title.to_sym] = nil
        puts "This title does not exist!"
    else
        puts "What do you want to change the rating to?"
    rating = gets.chomp
    series[title.to_sym] = rating.to_i
        puts "The movie #{title} has an updated rating of #{rating}."
end


when "display"
    series.each do |title, rating|
        puts "Serie: #{title.capitalize} - Rating: #{rating}"
    end

when "delete"
    puts "What title do you want to delete?"
    title = gets.chomp
    if
        series[title.to_sym] = nil
        puts "This serie doesn't exist!"
    else
        series.delete(title.to_sym)
        puts "#{title} has been removed."
    end
else
    puts "We're not sure what you mean.."
    puts "-- Type 'add' to add a movie."
    puts "-- Type 'update' to update a movie."
    puts "-- Type 'display' to display all series."
    puts "-- Type 'delete' to delete a movie."
end
