class Calculator
	attr_reader :result
	def initialize
		@result = result
	end

	def add(num1, num2)
		@result = num1 + num2
	end

	def subtract(num1, num2)
		@result = num1 - num2
	end

	def multiply(num1, num2)
		@result = num1 * num2
	end

	def divide(num1, num2)
		@result = num1 / num2
	end
end