class SandwichViewsController < ApplicationController
	def index
		@sandwiches = Sandwich.all
		if user_signed_in?
			render :index
		else 
			redirect_to "/"
		end
	end

	def show
		@sandwich = Sandwich.find(params[:id])
		@ingredients = Ingredient.all
		if user_signed_in?
			render :show
		else 
			redirect_to "/"
		end
	end
end
