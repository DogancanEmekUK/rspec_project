class Todo
    def initialize(task) # task is a string
      # ...
      @task = task
      @string = ""
      @task_condition = ""
    end
  
    def task
      # Returns the task as a string
      @string = "#TODO"
      return @task_condition = "#{@string} #{@task}"
    end
  
    def mark_done!
      # Marks the todo as done
      # Returns nothing
      @string = "#DONE"
      @task_condition = "#{@string} #{@task}"
    end
  
    def done?
      # Returns true if the task is done
      # Otherwise, false
      if (@task_condition.include?("#TODO"))
        return false
      else
        return true
      end
    end
end