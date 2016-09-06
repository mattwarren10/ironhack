class TextInspectionsController < ApplicationController
	def new

		render 'new'
	end

	def create
		@text = params[:text_inspection][:user_text]
		@word_count = @text.split(" ").length
		@words = @text.split(" ")
		@minutes = @word_count.to_f / 275 * 60
		@counts = Hash.new(0)
		@words.each do |word| 
			@counts[word] += 1
		end
		@sorted_hash = @counts.sort_by{ |k, v| v}.reverse.take(10)
		render "results"
	end
end
