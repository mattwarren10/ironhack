class BidsController < ApplicationController
	def create
		user = User.find(params[:user_id])
		product = user.products.find(params[:id]
		bid = product.bid.new(
			email: params[:product][:email]
			bid: params[:product][:bid]
		)

		bid.save

		redirect_to user_product_path(user, product)
	end
end
