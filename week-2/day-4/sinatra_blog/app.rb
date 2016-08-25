require 'sinatra'
require 'sinatra/reloader'
require_relative "lib/blog.rb"
require_relative "lib/post.rb"

my_blog = Blog.new
post1 = Post.new("My first blog post", Time.now, "Here is some text.")
post2 = Post.new("My second blog post", Time.now, "Text for blog post number two.")
post3 = Post.new("My third blog post", Time.now, "Post three blog post.")
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
	@post = Post.new(@title, Time.now, @text)
	@blog = my_blog.add_post(@post)
	redirect "/"
end