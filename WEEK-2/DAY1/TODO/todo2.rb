require 'Time'
require 'colorize'
require 'yaml/store'
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

class Task
    attr_reader :content, :id, :created_at, :updated_at
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @complete = false
        @created_at = Time.now.strftime("%d/%m/%Y %H:%M:%S")
        @updated_at = nil
    end

    def complete?
      @complete
    end

    def complete!
      @complete = true
    end

    def make_incomplete!
      @complete = false
    end

    def update_content!(content)
      @updated_at = Time.now.strftime("%d/%m/%Y %H:%M:%S")
      @content = content
    end

    def content
      @content
    end
end

# task = Task.new("Buy almond milk")
# puts task.complete?
# puts task.id
# puts task.content

# puts "-------------------------------------".colorize(:cyan)
# puts "Task: #{task.content}"
# puts "Created at: #{task.created_at}".colorize(:magenta)
# puts "-------------------------------------".colorize(:cyan)
#
# # 1
# puts "-------------------------------------".colorize(:cyan)
# puts "Updated task: #{task.update_content!("Buy oat milk instead")}"
# puts "Updated at: #{task.updated_at}".colorize(:magenta)
# puts "-------------------------------------".colorize(:cyan)

todo_list = TodoList.new("Marjon")
todo_list.add_task(Task.new("Walk the dog"))
todo_list.add_task(Task.new("Buy almond milk"))
todo_list.add_task(Task.new("Water my plants"))
todo_list.add_task(Task.new("Go to the gym"))
todo_list.add_task(Task.new("Get a tan at the beach!"))

todo_list.save

task = todo_list.sort_by_created

# task.each do |task|
#   puts "-------------------------------------".colorize(:cyan)
#   puts "Task: #{task.content}"
#   puts "Created at: #{task.created_at}".colorize(:magenta)
#   puts "-------------------------------------".colorize(:cyan)
# end

# puts "-------------------------------------".colorize(:cyan)
# puts "Task: #{task.content}"
# puts "Created at: #{task.created_at}".colorize(:magenta)
# puts "-------------------------------------".colorize(:cyan)
# # Walk the dog
