require 'pry'
class ShoppingCart
  attr_accessor :items
  def initialize
    @items = []
  end

  def add_item(item)
    @items.push(item)
  end

  def checkout
    total = 0
    @items.each do |item|
      binding.pry
      total += item.price
    end
    total
  end
end

class Item
  attr_accessor :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end

  def price
  end
end

class Houseware < Item
  def price
  end
end

class Fruit < Item
  def price
  end
end

banana = Fruit.new("banana", 10)
oj = Fruit.new("orange juice", 10)
rice = Item.new("rice", 1)
vacuum_cleaner = Houseware.new("vacuum cleaner", 150)
anchovies = Item.new("anchovies", 2)

my_cart = ShoppingCart.new
my_cart.add_item(banana)
my_cart.add_item(oj)
my_cart.add_item(rice)
my_cart.add_item(vacuum_cleaner)
my_cart.add_item(anchovies)

my_cart.checkout