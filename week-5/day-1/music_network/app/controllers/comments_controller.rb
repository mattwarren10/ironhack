class CommentsController < ApplicationController
	def index
		@concert = Concert.find(params[:concert_id])
		@comments = @concert.comments
	end
	def new
		@concert = Concert.find(params[:concert_id])
		@comment = @concert.comments.new
	end

	def create
		concert = Concert.find(params[:concert_id])
		comment = concert.comments.new(comments_params)
		comment.date = Time.now
		comment.save
		redirect_to concert_comments_path
	end

	private
	def comments_params
		params.require(:comment).permit(:author, :content)
	end
end
