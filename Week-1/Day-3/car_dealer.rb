class CarDealer
  def initialize(inventory)
    @inventory = inventory
  end

  def cars(brand)
      @inventory[brand.to_sym].each do |model|
       puts model
     end
  end
end

inventory = {
  :Ford => ["Fiesta", "Mustang"],
  :Honda => ["Civic", "CR-V"]
}

cardealer = CarDealer.new(inventory)
cardealer.cars("Ford")
