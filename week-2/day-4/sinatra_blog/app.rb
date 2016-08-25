require 'sinatra'
require 'sinatra/reloader'
require_relative "lib/blog.rb"
require_relative "lib/post.rb"

my_blog = Blog.new
post1 = Post.new("My first blog post", Time.now, "Here is some text.", "Sports", "Michael Jordan")
post2 = Post.new("My second blog post", Time.now, "Text for blog post number two.", "Health", "Oprah Winfrey")
post3 = Post.new("My third blog post", Time.now, "Post three blog post.", "News", "Jim Carrey")
my_blog.add_post(post1)
my_blog.add_post(post2)
my_blog.add_post(post3)

get "/" do
	@posts = my_blog.posts
	erb :home
end

get "/post_details/:id" do 
	@post = my_blog.posts[params[:id].to_i]
	erb :post_details
end

get "/new_post" do

	erb :new_post
end

post "/create_post" do
	@title = params[:title]
	@text = params[:text]
	@category = params[:category]
	@author = params[:author]
	@post = Post.new(@title, Time.now, @text, @category, @author)
	@blog = my_blog.add_post(@post)
	redirect "/"
end

get "/categories" do 
	@blog = my_blog
	@posts = @blog.posts

	erb :categories
end

get "/authors" do 
	@blog = my_blog
	@posts = @blog.posts

	erb :authors
end