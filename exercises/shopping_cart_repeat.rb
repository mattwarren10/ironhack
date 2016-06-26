require 'pry'
class ShoppingCart
  def initialize
    @items = []
  end

  def add_item(item)
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
  def initialize(name, price)
    @name = name	
	@price = price
  end

  def price 
  	puts @price
  end
end

class Houseware < Item
  attr_reader :name, :price
  def initalize(name, price)
  	super(name, price)
  end

  def price
  end
end

class Food < Item
  attr_reader :name, :price
  def initialize (name, price)
  	super(name, price)
  end
  def price 
  end
end

matts_cart = ShoppingCart.new
bananas = Food.new("bananas", 10)
oj = Food.new("orange juice", 10)
rice = Item.new("rice", 1)
vacuum_cleaner = Houseware.new("vacuum_cleaner", 150)
anchovies = Item.new("anchovies", 10)
matts_cart.add_item(bananas)
matts_cart.add_item(oj)
matts_cart.add_item(rice)
matts_cart.add_item(vacuum_cleaner)
matts_cart.add_item(anchovies)
matts_cart.checkout

