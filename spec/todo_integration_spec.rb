require 'todo'
require 'todo_list'

RSpec.describe "integration" do
    it "Adds the given task to the todo list" do
        new_task = TodoList.new
        todo = Todo.new("Do your homework")
        expect(new_task.add(todo.task)).to eq ["#TODO Do your homework"]
    end
    it "Returns all incomplete tasks" do
        new_task = TodoList.new
        todo_one = Todo.new("Do your homework")
        new_task.add(todo_one.task)
        todo_one.mark_done!
        expect(new_task.incomplete).to eq []
    end
end