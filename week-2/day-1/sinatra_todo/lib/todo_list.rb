class TodoList
    attr_reader :tasks
    def initialize
        @tasks = []
    end

    def add_task(t)
    	@tasks.push(t)
    end

    def delete_task(id)
    	@tasks.delete_if do |task|
    		task.id == id
    	end
    end

    def find_task_by_id(id)
    	@tasks.each do |task|
    		if task.id == id
    			return task.content
    		else 
    			nil
    		end
    	end
    end

    def sort_by_created
    	sorted_tasks = @tasks.sort do |task1, task2|
    		task1.created_at <=> task2.created_at
    	end
    	sorted_tasks
    end
end

