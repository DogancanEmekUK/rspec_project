require 'personal_diary'

RSpec.describe PersonalDiary do
    it "takes an argument and returns it with three dots" do
        snippet = PersonalDiary.new("Hello, my name is Dogancan and welcome to my diary")
        result = snippet.make_snippet
        expect(result).to eq "Hello, my name is Dogancan..."
    end
    it "counts the words of the given argument" do
        count = PersonalDiary.new("Hello, my name is Dogancan and welcome to my diary")
        result = count.word_count
        expect(result).to eq 10
    end
end
