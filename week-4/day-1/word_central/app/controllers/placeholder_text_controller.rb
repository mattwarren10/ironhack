class PlaceholderTextController < ApplicationController
	def new 

		render 'new'
	end

	def create
		@number = params[:user][:number]
		@select = params[:user][:select]
	end
end
