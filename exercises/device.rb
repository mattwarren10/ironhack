class Device
	attr_accessor :manuf, :yr

	def initialize(manuf, yr)
		@manuf = manuf
		@yr = yr
	end
end

class Computer < Device
	attr_accessor :memory
	def initialize(manuf, yr, memory)
		super(manuf, yr)
		@memory = memory
	end
end

class TV < Device
	attr_accessor :resolu
	def initialize(manuf, yr, resolu)
		super(manuf, yr)
		@resolu = resolu
	end
end	

sony = TV.new("Sony", "2007", "1080P")
mbp = Computer.new("Apple", "2010", "4GB of 1066MHz DDR3 memory")
hp = Computer.new("HP", "2007", "4GB of 1066MHz DDR3 memory")

print sony.manuf, " ", sony.yr, " ", sony.resolu, "\n"
print hp.manuf, " ", hp.yr, "\n"
print mbp.manuf, " ", mbp.yr, " ", mbp.memory, "\n"