
class Purchase
	def initialize
		@milk_shakes = [ ]
	end

	def add_milk_shake(milk_shake)
		@milk_shakes.push(milk_shake)
	end

	def chk_out_milkshakes
		puts @milk_shakes
		total_cost_of_purchase = 0
		@milk_shakes.each do |i|
			puts i.price_of_milkshake
			total_cost_of_purchase += i.price_of_milkshake
		end
		print "Cost for ", @milk_shakes.length, " milkshakes = $#{total_cost_of_purchase} \n"
	end
end

class MilkShake
  def initialize
    @base_price = 3
    @ingredients = [ ]        
  end

  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end

  def price_of_milkshake
	  #Let's establish what our counter should be before we start adding ingredients into the mix
	  total_price_of_milkshake = @base_price
	  #Add each ingredients price to our total
	  @ingredients.each do |ingredient|
	    total_price_of_milkshake += ingredient.price
	  end
	  #return  our total price to whoever called for it
	   total_price_of_milkshake
	end
end

class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end
end

#Ordering milkshakes
matts_milkshake = MilkShake.new #instantiation
blueberries = Ingredient.new("blueberries", 3)
almonds = Ingredient.new("almonds", 2)
matts_milkshake.add_ingredient(blueberries)
matts_milkshake.add_ingredient(almonds)

nizars_milkshake = MilkShake.new
banana = Ingredient.new("banana", 2)
chocolate_chips = Ingredient.new("chocolate chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)

dawns_milkshake = MilkShake.new
strawberries = Ingredient.new("strawberries", 3)
blackberries = Ingredient.new("blackberries", 3)
walnuts = Ingredient.new("walnuts", 2)
dawns_milkshake.add_ingredient(strawberries)
dawns_milkshake.add_ingredient(blackberries)
dawns_milkshake.add_ingredient(walnuts)

#Adding shakes to 'cart'
matt_nizar_dawn = Purchase.new
matt_nizar_dawn.add_milk_shake(matts_milkshake)
matt_nizar_dawn.add_milk_shake(nizars_milkshake)
matt_nizar_dawn.add_milk_shake(dawns_milkshake)
matt_nizar_dawn.chk_out_milkshakes
