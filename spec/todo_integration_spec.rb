require 'todo'
require 'todo_list'

RSpec.describe "integration" do
    it "adds the thing to do to the list" do
        new_todo_list = TodoList.new
        thing_todo_one = Todo.new("homework")
        result = new_todo_list.add(thing_todo_one.task)
        expect(result).to eq ["#TODO homework"]
    end
    it "returns the list of incompleted tasks" do
        new_todo_list = TodoList.new
        thing_todo_one = Todo.new("homework")
        thing_todo_two = Todo.new("cleaning")
        new_todo_list.add(thing_todo_one.task)
        new_todo_list.add(thing_todo_two.mark_done!)
        result = new_todo_list.incomplete
        expect(result).to eq ["#TODO homework"]
    end
    it "returns the list of completed tasks" do
        new_todo_list = TodoList.new
        thing_todo_one = Todo.new("homework")
        thing_todo_two = Todo.new("cleaning")
        new_todo_list.add(thing_todo_one.task)
        new_todo_list.add(thing_todo_two.mark_done!)
        result = new_todo_list.complete
        expect(result).to eq ["#DONE cleaning"]
    end
    it "marks all tasks as complete" do
        new_todo_list = TodoList.new
        thing_todo_one = Todo.new("homework")
        thing_todo_two = Todo.new("cleaning")
        new_todo_list.add(thing_todo_one.task)
        new_todo_list.add(thing_todo_two.task)
        result = new_todo_list.give_up!
        expect(result).to eq ["#DONE homework", "#DONE cleaning"]
    end
end