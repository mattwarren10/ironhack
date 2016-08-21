class Purchase
  def initialize
  	@items = []
  end

  def add_item(item)
  	@items.push(item)
  end

  def checkout
  	total_cost = 0
  	@items.each do |item|
	    print item.name, " ", item.price, "\n"
	    print item.ingredients
	    total_cost += item.price
	  end
  end
end

class Sandwich
  attr_reader :name, :price, :ingredients
  def initialize(name, price)
  	@name = name
  	@price = price
  	@ingredients = []
  end

  def add_ingredient(ingredient)
  	@ingredients.push(ingredient)
  end
end

class Ingredients
	def initialize (ingredient)
		@ingredient = ingredient
	end
end

matts_sandwich = Sandwich.new("Totally Tuna", 4.75)
sprouts = Ingredients.new("Sprouts")
dijon_mustard = Ingredients.new("Dijon Mustard")

matts_sandwich.add_ingredient(sprouts)
matts_sandwich.add_ingredient(dijon_mustard)

matt_pays = Purchase.new()
matt_pays.add_item(matts_sandwich)
puts matt_pays.checkout