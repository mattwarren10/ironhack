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
		user = User.find(params[:user_id])
		product = user.products.new(
			title: params[:product][:title],
			description: params[:product][:description],
			deadline: params[:product][:deadline]
		)
		product.save
		redirect_to products_path(user)
	end

	def destroy
	end

end
