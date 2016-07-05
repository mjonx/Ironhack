require 'Time'
require 'colorize'
require_relative '/todo'
require 'pry'

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


todo_list = TodoList.new("Marjon")
todo_list.add_task(Task.new("Walk the dog"))
todo_list.add_task(Task.new("Buy almond milk"))
todo_list.add_task(Task.new("Water my plants"))
todo_list.add_task(Task.new("Go to the gym"))
todo_list.add_task(Task.new("Get a tan at the beach!"))

todo_list.save

task = todo_list.sort_by_created
