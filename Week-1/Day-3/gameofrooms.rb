class Player
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Rooms
  attr_reader :name :description
    def initialize(name, description)
      @name = name
      @description = description
    end
end

class RoomStart < Rooms
  def initialize(name, description)
    super(name, description)
    #exit North
    #exit East
    #exit South
    #exit West
  end
end

class RoomNorth < Rooms
  def initialize(name, description)
    super(name, description)
    #exit East
    #exit South
    #exit West
  end
end

class RoomEast < Rooms
  def initialize(name, description)
    super(name, description)
    #exit North
    #exit South
    #exit West
  end
end

class RoomSouth < Rooms
  def initialize(name, description)
    super(name, description)
    #exit North
    #exit East
    #exit West
  end
end

class RoomWest < Rooms
  def initialize(name, description)
    super(name, description)
    #exit North
    #exit East
    #exit South
  end
end


moveNorth = RoomNorth.new("Room North", "N desc.", ..., ..., ...)



class RoomStart < Rooms
  puts "Hello Character, you are in the first room. What would you like to do?"
  puts "- To go North, please type 'N', for East type 'E', for South type 'S' and for West type 'W'."
  puts ">"

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
