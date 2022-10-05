class Todo
    def initialize(task) # task is a string
      # ...
      @task = task
      @label = ""
      @task_condition = ""
    end
  
    def task
      # Returns the task as a string
      @label = "#TODO"
      @task_condition = "#{@label} #{@task}"
      return @task_condition
    end
  
    def mark_done!
      # Marks the todo as done
      # Returns nothing
      @label = "#DONE"
      @task_condition = "#{@label} #{@task}"
      return @task_condition
    end
  
    def done?
      # Returns true if the task is done
      # Otherwise, false
      if (@task_condition.include?("#DONE"))
        return true
      else
        return false
      end
    end
end