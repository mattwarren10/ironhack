class Blog 
	attr_reader :posts
	def initialize
		@posts = []
	end

	def add_post(p)
		@posts.push(p)
	end

	def latest_posts
		sorted_by_date = @posts.sort do |post1, post2|
    		post2.date <=> post1.date
    	end
    	sorted_by_date
	end
end