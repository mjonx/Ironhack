# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Marjon", email: "marjonsiero@gmail.com")
User.create(name: "Alecia", email: "aleciamoore@gmail.com")

Product.create(title: "Vinyl 7'", description: "7 inch vinyl of Pinks hit song Sober.", enddate: (3.days + 9.hours).from_now, user_id: 1)
Product.create(title: "Vinyl 12'", description: "12 inch vinyl of Pinks album Funhouse.", enddate: (2.days + 18.hours).from_now, user_id: 2)
Product.create(title: "Vinyl 7'", description: "7 inch vinyl of Pinks hit song Leave me Alone (I'm lonely).", enddate: (12.days + 4.hours).from_now, user_id: 1)
Product.create(title: "Vinyl 12'", description: "12 inch vinyl of Pinks album I'm not Dead.", enddate: (21.days + 1.hour).from_now, user_id: 2)
