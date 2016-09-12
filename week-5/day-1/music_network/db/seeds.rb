# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
kanye_west = Concert.create!(artist: "Kanye West", venue: "American Airlines Arena", city: "Miami", date: Time.new(2016, 9, 16), price: 75, description: "Kanye West: The Saint Pablo Tour")
coldplay = Concert.create!(artist: "Coldplay", venue: "Mount Smart Stadium", city: "Auckland", date: Time.new(2016, 12, 3), price: 50, description: "Leg 4 Oceania")