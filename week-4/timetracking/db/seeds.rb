# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
name1 = Project.create!(name: "Josh's Project", description: "Josh's project description")
name2 = Project.create!(name: "Time Tracking App")
name3 = Project.create!(name: "Recipes", description: "Track my favorite recipes")
name4 = Project.create!(name: "Books", description: "Track my favorite books")
name5 = Project.create!(name: "Movies", description: "Track my favorite movies")
name6 = Project.create!(name: "Bicycles", description: "Track my favorite bicycles")
name7 = Project.create!(name: "Cars", description: "Track my favorite cars")
name8 = Project.create!(name: "Computers", description: "Track my favorite computers")
name9 = Project.create!(name: "Homeperc", description: "Track my favorite homeperc projects")
name10 = Project.create!(name: "Cities", description: "Track my favorite cities")

name1.time_entries.create(hours: 2, minutes: 23)
name1.time_entries.create(hours: 1, minutes: 25)
name1.time_entries.create(hours: 5, minutes: 45)
name1.time_entries.create(hours: 1, minutes: 43)
name1.time_entries.create(hours: 3, minutes: 34)
name1.time_entries.create(hours: 6, minutes: 21)
