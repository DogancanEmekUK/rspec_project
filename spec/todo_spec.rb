require 'todo'

RSpec.describe To_do do
    it "successfully returns true when there's a #TODO inside the string" do
        todo = To_do.new
        result = todo.check_task("#TODO do your homework")
        expect(result).to eq true
    end
    it "successfully returns false when there isn't a #TODO inside the string" do
        todo = To_do.new
        result = todo.check_task("do your homework")
        expect(result).to eq false
    end
    it "returns an error when the string is empty" do
        todo = To_do.new
        expect { todo.check_task("") }.to raise_error "Incorrect value"
    end
end
