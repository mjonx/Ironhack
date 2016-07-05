require 'colorize'
require 'yaml/store'
require_relative '/task'
require 'pry'

class TodoList
    attr_reader :tasks, :user
    def initialize(user)
       @todo_store = YAML::Store.new("./public/tasks.yml")
       @tasks = []
       @user = user
    end

    def add_task(task)
  		@tasks.push(task)
  	end

    def delete_task(id)
    	@tasks.delete_if { |task| task.id == id }
    end

    def find_task_by_id(id)
        @tasks.find do |task|
          task.id == id
        end
    end

    def sort_by_created
      sorted_tasks = @tasks.sort { | task1, task2 | task1.created_at <=> task2.created_at }
    end

    def save
      @todo_store.transaction do
      @todo_store[@user] = @tasks
    end
  end
end
