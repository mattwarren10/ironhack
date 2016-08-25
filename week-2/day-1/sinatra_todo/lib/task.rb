class Task
    attr_reader :content, :id, :created_at, :updated_at
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @completed = false
        @created_at = Time.now
        @updated_at = Time.now
    end

    def completed?
    	@completed
    end

    def complete!
    	@completed = true
    end

    def incomplete!
    	@completed = false
    end

    def update_content!(new_content)
    	@content = new_content
    end
end