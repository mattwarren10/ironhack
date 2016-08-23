require_relative("../lib/todo_list.rb")
require_relative("../lib/task.rb")

RSpec.describe TodoList do 
	before :each do
		@todo_list = TodoList.new
		@task = Task.new("Walk the dog")
	end
	describe "using todo_list" do
		it "expects todo_list to equal an empty array" do
			expect(@todo_list.tasks).to eq([])
		end
		it "adds each task to the todo_list class" do
			@todo_list.add_task(@task)
			expect(@todo_list.tasks.length).to eq(1)
		end
		it "deletes a task by passing in its id" do
			@todo_list.add_task(@task)
			@todo_list.delete_task( @task.id )
			expect(@todo_list.tasks.length).to eq(0)
		end
		it "goes through the list of tasks and finds one by its id" do
			@todo_list.add_task(@task)
			expect(@todo_list.find_task_by_id(@task.id)).to eq(@task.content)
		end

		it "takes @tasks from todolist, sorts it by date, and returns a new array of sorted tasks" do
			task1 = Task.new("Feed the pig")
			task2 = Task.new("Walk the dog")
			task3 = Task.new("Rob the bank")
			sorted_tasks = [task3, task2, task1]
			expect(@todo_list.sort_by_created).to eq(sorted_tasks)
		end
	end
end