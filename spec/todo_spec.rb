require 'todo'

RSpec.describe Todo do
    it "Returns the task as a string" do
        todo = Todo.new("Do your homework")
        expect(todo.task).to eq ("#TODO Do your homework")
    end
    it "Marks the task as done" do
        todo = Todo.new("Do your homework")
        expect(todo.mark_done!).to eq ("#DONE Do your homework")
    end
    it "Returns true if the task is done" do
        todo = Todo.new("Do your homework")
        expect(todo.done?).to eq true
    end
end