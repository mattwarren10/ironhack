#quick example of how super works

class Animal
  def move
    "I can move"
  end
end

class Bird < Animal
  def move
    super + " by flying."
  end
end

class Fish < Animal
  def move
  	super + "by swimming."
  end
end

robin = Bird.new()

bluegill = Fish.new()
catfish = Fish.new()

