class SandwichViewsController < ApplicationController
	def index
		@sandwiches = Sandwich.all
	end

	def show
		@sandwich = Sandwich.find(params[:id])
	end
end
