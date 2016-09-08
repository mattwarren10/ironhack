class ProductsController < ApplicationController

	def index
		user = User.find(params[:user_id])
		@products = user.products
	end

	def new 
		# 1. find the user
		# 2. add user
		@user = User.find(params[:user_id])
		@product = @user.products.new
	end

	def show
	end

	def create
	end

	def destroy
	end

end
