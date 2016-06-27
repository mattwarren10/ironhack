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
	  total_cost += item.price
	end
  end
end

class Sandwich
  attr_reader :name, :price
  def initialize(name, price)
  	@name = name
  	@price = price
  end
end

matts_sandwich = Sandwich.new("Totally Tuna", 4.75)
matt_pays = Purchase.new()
matt_pays.add_item(matts_sandwich)
puts matt_pays.checkout