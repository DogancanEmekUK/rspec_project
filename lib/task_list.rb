class Task_List
    def initialize #initializes the task list as an array
        @task_list = []
    end
    def add(task) #adds the given task to the task list
        fail "No task is given" if task.empty?
        return @task_list << task
    end
    def remove(task) #removes the given task from the task list
        fail "No task is given" if task.empty?
        if (@task_list.include?(task))
            @task_list.delete(task)
            return @task_list
        else
            return "There is no such task"
        end
    end
end