class SandwichViewsController < ApplicationController
	def index
		@sandwiches = Sandwich.all
	end
end
