class Character
  attr_reader :name
  def initialize(name)
    @name = name
  end
  def start_game()

  end
end

class Game
  def initialize(start)
    @start = start
  end

  def self.room_
    puts "Hello Character, you are in the first room. What would you like to do? \n - To go North, please type 'N', for East type 'E', for South type 'S' and for West type 'W'."
    direction = gets.chomp.upcase
    if direction == "N"
      puts "You are now moving to Room North."
      #move to RoomNorth
    elsif direction == "E"
      puts "You are now moving to Room East."
      #move to RoomEast
    elsif direction == "S"
      puts "You are now moving to Room South."
      #move to RoomSouth
    elsif direction == "W"
      puts "You are now moving to Room West."
      #move to RoomWest
    else
      puts "Your input is not valid. Please pick 'N', 'E', 'S' or 'W'!"
end



class RoomStart < Rooms
  puts "Hello Character, you are in the first room. What would you like to do?"
  puts "- To go North, please type 'N', for East type 'E', for South type 'S' and for West type 'W'."

  direction = gets.chomp.upcase

    if direction == "N"
      puts "You are now moving to Room North."
      #move to RoomNorth
    elsif direction == "E"
      puts "You are now moving to Room East."
      #move to RoomEast
    elsif direction == "S"
      puts "You are now moving to Room South."
      #move to RoomSouth
    elsif direction == "W"
      puts "You are now moving to Room West."
      #move to RoomWest
    else
      puts "Your input is not valid. Please pick 'N', 'E', 'S' or 'W'!"
      direction = gets.chomp.upcase
    end
end

class RoomNorth < Rooms
end

class RoomEast < Rooms
end

class RoomSouth < Rooms
end

class RoomWest < Rooms
end
