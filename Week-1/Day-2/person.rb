class Person
  attr_reader :name
  attr_accessor :age
  def initialize(name, age)
    @name = name
    @age = age
  end
end

a_person = Person.new("Bob", 29)
puts "Hi I am #{a_person.name} and I am #{a_person.age} old!"

a_person.age = 32
puts a_person.age
