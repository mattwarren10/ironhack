#Inside of app.rb
require 'sinatra'
require 'sinatra/reloader'

# We're going to need to require our class files
require_relative("lib/task.rb")
require_relative("lib/todo_list.rb")

walk = Task.new("Walk the dog")
feed = Task.new("Feed the pig")
rob = Task.new("Rob the bank")
help = Task.new("Help the old lady cross the street")

todo_list = TodoList.new
todo_list.add_task(walk)
todo_list.add_task(feed)
todo_list.add_task(rob)
todo_list.add_task(help)


get "/" do
	@todo_list = todo_list	

	erb :task_index
end

get "/new_task" do

	erb :new_task

end

post "/create_task" do
	key = params[:new_task]
	@task = Task.new(key)
	@todo_list = todo_list	
	@todo_list.add_task(@task)
	redirect "/"
end

get "/complete/:id" do
	task = @todo_list.find_task_by_id(params[:id].to_i)
	task.complete!
	redirect "/"
end

