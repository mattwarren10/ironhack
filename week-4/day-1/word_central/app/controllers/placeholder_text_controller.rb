class PlaceholderTextController < ApplicationController
	def new 

		render 'new'
	end

	def create
		@number = params[:user][:number].to_i
		@select = params[:user][:select]
		@word = "Lorem " * @number
		@paragraph = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. " * @number
	end
end
