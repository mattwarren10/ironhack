class AsciisController < ApplicationController
	def new 

		render 'new'
	end

	def create

		@text = params[:textarea][:text]
		@the_ascifier = Artii::Base.new :font => 'slant'
		@new_word = @the_ascifier.asciify(@text)

		render 'create'
	end
end
