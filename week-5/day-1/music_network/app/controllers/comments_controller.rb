class CommentsController < ApplicationController
	def new
		@concert = Concert.find(params[:concert_id])
		@comment = @concert.comments.new
	end
end
