class TodoList
    def initialize
        @todo_list = []
    end
  
    def add(todo) # todo is an instance of Todo
      # Returns nothing
      @todo_list << todo
    end
  
    def incomplete
      # Returns all non-done todos
      return @todo_list.select { |entry| entry.include?("#TODO") }
    end
  
    def complete
      # Returns all complete todos
      return @todo_list.select { |entry| entry.include?("#DONE") }
    end
  
    def give_up!
      # Marks all todos as complete
      return @todo_list.each { |entry| entry[0..5] = "#DONE " }
    end
end