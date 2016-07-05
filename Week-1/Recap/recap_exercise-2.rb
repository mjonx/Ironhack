# dependence injection

class Car
  def initialize(engine)
      @noise = "Broom"
      @engine = engine
    end
    def noise
      #@noise + " " + @engine.noise #OR do interpolation to create the space - see below
      "#{@noise} #{@engine.noise}"
    end
end

class Engine
  attr_reader :noise
  def initialize(noise)
    @noise = noise
  end

end

engine = Engine.new('PraPraPra')
car1 = Car.new(engine)

puts car1.noise
