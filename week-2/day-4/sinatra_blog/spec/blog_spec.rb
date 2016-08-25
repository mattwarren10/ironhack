require_relative("../lib/blog.rb")
require_relative("../lib/post.rb")

RSpec.describe Blog do 
	before :each do
		@my_blog = Blog.new
		# @post = Post.new
		# @my_blog.add_post(post)
	end
	describe "#blog" do
		it "returns an array of the posts added." do
			expect(@my_blog.posts).to eq([])
		end		
		it "returns an array of the posts in the correct chronological order" do
			@post1 = Post.new("My first blog post", Time.now, "Here is some text.", "Sports", "Michael Jordan")
			@post2 = Post.new("My second blog post", Time.now, "Text for blog post number two.", "Health", "Oprah Winfrey")
			@post3 = Post.new("My third blog post", Time.now, "Post three blog post.", "News", "Jim Carrey")
			@my_blog.add_post(@post2)
			@my_blog.add_post(@post1)
			@my_blog.add_post(@post3)

			sorted_posts = [@post3, @post2, @post1]
			expect(@my_blog.latest_posts).to eq(sorted_posts)
		end
	end
end