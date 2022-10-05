require 'todo'

RSpec.describe Todo do
    it "returns the task as a string" do
        thing_todo = Todo.new("homework")
        result = thing_todo.task
        expect(result).to eq "#TODO homework"
    end
    it "returns true if the task is done" do
        thing_todo = Todo.new("homework")
        thing_todo.mark_done!
        result = thing_todo.done?
        expect(result).to eq true
    end
end