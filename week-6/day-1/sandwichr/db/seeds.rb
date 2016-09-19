# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sandwich1 = Sandwich.create!(name: "Turkey", bread_type: "Italian")
sandwich2 = Sandwich.create!(name: "Ham", bread_type: "Wheat")
sandwich3 = Sandwich.create!(name: "Ruben", bread_type: "Rye")

ingredient1 = Ingredient.create!(name: "cheese", calories: 80)
ingredient2 = Ingredient.create!(name: "tomatoes", calories: 30)
ingredient3 = Ingredient.create!(name: "olives", calories: 50)

sandwich1.ingredients.push(ingredient1)
sandwich1.ingredients.push(ingredient2)
sandwich1.ingredients.push(ingredient3)

