require 'task_list'

RSpec.describe Task_List do
    it "adds the given task into an array" do
        new_task = Task_List.new
        result = new_task.add("Do your homework")
        expect(result).to eq ["Do your homework"]
    end
    it "fails if no task is given" do
        error = Task_List.new
        expect { error.add("") }.to raise_error "No task is given"
    end
    it "removes the given task from the array" do
        completed_task = Task_List.new
        completed_task.add("Do your homework")
        result = completed_task.remove("Do your homework")
        expect(result).to eq []
    end
    it "returns an error if there is no such task" do
        error = Task_List.new
        result = error.remove("Call your manager")
        expect(result).to eq "There is no such task"
    end
    it "fails if no task is given" do
        error = Task_List.new
        expect { error.remove("") }.to raise_error "No task is given"
    end
end