# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tournament1 = Tournament.create!(name: "Halo")
tournament2 = Tournament.create!(name: "Call of Duty")
tournament3 = Tournament.create!(name: "World of Warcraft")
tournament4 = Tournament.create!(name: "Donkey Kong")

player1 = Player.create!(name: "Ross Gellar")
player2 = Player.create!(name: "Rachel Green")
player3 = Player.create!(name: "Chandler Bing")
player4 = Player.create!(name: "Joey Fatone")

