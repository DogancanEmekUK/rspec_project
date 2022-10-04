require 'diary'

RSpec.describe Diary do
    context "No entry has been added" do
        it "returns an empty array" do
            new_diary = Diary.new
            expect(new_diary.all).to eq []
        end
    end
end