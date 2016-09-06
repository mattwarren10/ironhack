class TextInspectionsController < ApplicationController
	def new

		render 'new'
	end

	def create
		@text = params[:text_inspection][:user_text]
		@word_count = @text.split(" ").length
		@minutes = @word_count.to_f / 275 * 60
		render "results"
	end
end
