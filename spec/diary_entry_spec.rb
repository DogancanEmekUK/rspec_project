require 'diary_entry'

RSpec.describe DiaryEntry do
    it "returns the title as a string" do
        diary = DiaryEntry.new("Harry Potter", "There was a young wizard called Harry Potter.")
        result = diary.title
        expect(result).to eq "Harry Potter"
    end
    it "return the contents as a string" do
        diary = DiaryEntry.new("Harry Potter", "There was a young wizard called Harry Potter.")
        result = diary.contents
        expect(result).to eq "There was a young wizard called Harry Potter."
    end
    it "returns the word number of the content as an integer" do
        diary = DiaryEntry.new("Harry Potter", "There was a young wizard called Harry Potter.")
        result = diary.count_words
        expect(result).to eq 8
    end
    it "returns the time that it'll take for user to read the contents according to the wpm" do
        diary = DiaryEntry.new("Harry Potter", "There was a young wizard called Harry Potter.")
        result = diary.reading_time(1)
        expect(result).to eq 8
    end
    it "returns the reading chunk the user can read in the given amount of minutes" do
        diary = DiaryEntry.new("Harry Potter", "There was a young wizard called Harry Potter.")
        result_one = diary.reading_chunk(1, 2)
        expect(result_one).to eq "There was"
        result_two = diary.reading_chunk(1, 2)
        expect(result_two).to eq "a young"
    end
end