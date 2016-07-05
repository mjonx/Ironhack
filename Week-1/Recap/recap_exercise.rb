class Vehicle
  attr_reader :wheels, :noise
  def initialize(wheels, noise)
    @wheels = wheels
    @noise = noise
  end
end

# class Car < Vehicle
#   def initialize(wheels, noise)
#     super(wheels, noise)
#   end
#
# end
#
# class Bike < Vehicle
#   def initialize(wheels, noise)
#     super(wheels, noise)
#   end
#
# end

class VehicleInfo
  def initialize(wheels, noise)
    super(wheels, noise)
  end

  def make_noise(noise)
    all_vehicle.each do |sound|
      sound = VehicleInfo.make_noise
    end
  end

end

mustang = Vehicle.new(4, "Vrooooooom")
dodge = Vehicle.new(4, "Brooooom")
bmw = Vehicle.new(2, "Brom Brom")

all_vehicles = [mustang, dodge, bmw]

puts all_vehicles.make_noise
