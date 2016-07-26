# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


 mj = User.create(first_name: "Marjon", last_name: "Siero", email: "marjonsiero@gmail.com")
# cs = User.create(first_name: "Christie", last_name: "Siero", email: "christiesiero@gmail.com")
# ms = User.create(first_name: "Michiel", last_name: "Siero", email: "michielsiero@hotmail.com")
# mj = User.first
memory = mj.memories.create()
memory.trips.create(title: 'awsome trip', destination: 'Barcelona')

# memory1 = Memory.create( trip: trip1)

# memory1.trips.push(trip1)
# mj.memories.push(memory1)
