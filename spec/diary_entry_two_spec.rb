require 'diary_entry_two'

RSpec.describe DiaryEntryTwo do
    context "With a new entry added" do
        it "Returns the title" do
            entry_one = DiaryEntryTwo.new("Wednesday", "I got up early.")
            expect(entry_one.title).to eq "Wednesday"
        end
        it "Returns the contents" do
            entry_one = DiaryEntryTwo.new("Wednesday", "I got up early.")
            expect(entry_one.contents).to eq "I got up early."
        end
        it "Returns the number of words in the contents" do
            entry_one = DiaryEntryTwo.new("Wednesday", "I got up early.")
            expect(entry_one.count_words).to eq 4
        end
        it "Returns an integer representing an estimate of the reading time in minutes" do
            entry_one = DiaryEntryTwo.new("Wednesday", "I got up early.")
            expect(entry_one.reading_time(1)).to eq 4
        end
        it "Returns an integer representing an estimate of the reading time in minutes" do
            entry_one = DiaryEntryTwo.new("Wednesday", "I got up early today.")
            expect(entry_one.reading_time(2)).to eq 3
        end
        it "Returns the part of the contents that can be read in given amount of minutes" do
            entry_one = DiaryEntryTwo.new("Wednesday", "I didn't get up early.")
            expect(entry_one.reading_chunk(1, 3)).to eq "I didn't get"
            expect(entry_one.reading_chunk(1, 3)).to eq "up early."
            expect(entry_one.reading_chunk(1, 3)).to eq "I didn't get"
        end
    end
end