
# Get the current time to determine which discounts to apply
t = Time.now
day_i = t.wday

class ShoppingCart
	def initialize
		@items = [ ]
	end
	def add_item (item)
		@items.push(item)
	end
	def checkout 
		puts @items, "\n"
		total_cost = 0
		#print each item name and price
		@items.each do |item|
			print item.name, " ", item.price, "\n"
			total_cost += item.price
		end
		if @items.length >= 5
			storewide_discount = (total_cost * 0.90).round(2)
			print "Because you have at least ", @items.length, " items, you have received a 10% discount.\nYour total cost is $#{storewide_discount}\n"
			
		else
			print "Cost for ", @items.length, " items = $#{total_cost} \n"
		end
	end
end

class Item 
	attr_reader :name, :price
	cost_of_each_item = 0
	def initialize (name, price)
		@name = name
		@price = price
	end
end

class Houseware < Item
	def initialize (name, price)
		super(name, price)
	end
	def price
		# 5% discount if price is greater than $100
		if @price > 100
			hw_disc_price = @price * 0.95
		else
			@price
		end	
	end
end

class Food < Item
	def initialize (name, price)
		super(name, price)
	end
	def price
		#determines if discount should be applied based on current day
		if day_i = 0 || day_i = 7
			food_disc_price = @price * 0.9
		else 
			@price
		end
	end
end

v_c = Houseware.new("Vacuum Cleaner", 150)
banana = Food.new("Banana", 10)
oj = Food.new("Orange Juice", 10)
rice = Food.new("Rice", 1)
anchovies = Food.new("Anchovies", 2)
apples = Food.new("Apples", 10)

matts_cart = ShoppingCart.new
matts_cart.add_item(v_c)
matts_cart.add_item(banana)
matts_cart.add_item(oj)
matts_cart.add_item(anchovies)
matts_cart.add_item(apples)

puts matts_cart.checkout