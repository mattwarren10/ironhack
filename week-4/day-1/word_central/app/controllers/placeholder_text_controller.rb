class PlaceholderTextController < ApplicationController
	def new 

		render 'new'
	end

	def create
		@number = params[:number]
		@select = params[:select]
	end
end
