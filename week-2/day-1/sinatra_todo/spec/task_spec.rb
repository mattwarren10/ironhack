require_relative("../lib/task.rb")

RSpec.describe Task do 
	before :each do
		@task = Task.new("Walk the dog")
	end
	describe "using Task" do
		it "makes sure :content is an attribute" do
			expect(@task.content).to eq("Walk the dog")
		end		
		it "makes sure a task receives an id" do
			expect(@task.id).to eq(2)
		end
		it "initiates an incomplete task" do
			expect(@task.completed?).to eq(false)
		end
		it "changes completed? to true" do
			@task.complete!
			expect(@task.completed?).to eq(true)
		end
		it "changes a task to incomplete" do
			@task.complete!
			@task.incomplete!
			expect(@task.completed?).to eq(false)
		end
		it "checks if there is a created_at attribute" do
			expect(@task.created_at).to be_between(Time.now - 1, Time.now + 1).inclusive
		end
		it "updates the content instance variable" do
			expect(@task.update_content!("Feed the pig")).to eq(@task.content)
		end
		it "checks that updated_at time changes when update_content! method is called" do
			@task.update_content!("Feed the pig")
			expect(@task.updated_at).to be_between(Time.now - 1, Time.now + 1).inclusive
		end

	end
end