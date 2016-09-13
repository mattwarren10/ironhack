class ProductsController < ApplicationController

  def index
  		@user = User.find(params[:user_id])
  		@products = @user.products
  end

  def new
    @user = User.find(params[:user_id])
    @product = @user.products.new
  end

  def create
    user = User.find(params[:user_id])
    product = user.products.new(
      title: params[:product][:title],
      description: params[:product][:description],
      deadline: params[:product][:deadline]
    )

    product.save

    redirect_to user_products_path(user)
  end

  def show
  	@user = User.find(params[:user_id])
  	@product = @user.products.find(params[:id])
  end

  def update
  end
end