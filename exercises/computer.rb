class Computer
	attr_accessor :manuf, :os, :yr, :memory
	def initialize(manuf, os, yr, memory)
		@manuf = manuf
		@os = os
		@yr = yr
		@memory = memory
	end
end

mbp = Computer.new "Apple", "Mac OS X", "2010", "4GB of 1066MHz DDR3 memory"
gw = Computer.new "Gateway", "Linux 14.04.03 LTS", "2010", "4GB of 1066MHz DDR3 memory"
hp = Computer.new "HP", "Windows 7 Home Premium", "2007", "2GB of 1066MHz DDR3 memory"

puts mbp.manuf, mbp.os, mbp.yr, mbp.memory