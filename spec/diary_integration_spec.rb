require 'diary'
require 'diary_entry_two'

RSpec.describe "integration" do
    context "when adding an entry" do
        it "Lists all entries" do
            new_diary = Diary.new
            entry_one = DiaryEntryTwo.new("Wednesday", "I got up early.")
            new_diary.add(entry_one)
            expect(new_diary.all).to eq [entry_one]
        end
        it "Counts all the words" do
            new_diary = Diary.new
            entry_one = DiaryEntryTwo.new("Wednesday", "I got up early.")
            entry_two = DiaryEntryTwo.new("Wednesday", "She got up early.")
            new_diary.add(entry_one)
            new_diary.add(entry_two)
            expect(new_diary.count_words).to eq 8
        end
        it "Returns an integer representing an estimate of the reading time in minutes" do
            new_diary = Diary.new
            entry_one = DiaryEntryTwo.new("Wednesday", "I got up early.")
            entry_two = DiaryEntryTwo.new("Wednesday", "Did she got up early?")
            new_diary.add(entry_one)
            new_diary.add(entry_two)
            expect(new_diary.reading_time(2)).to eq 5
        end
        it "Recommends the best entry to read" do
            new_diary = Diary.new
            entry_one = DiaryEntryTwo.new("Wednesday", "I got up.")
            entry_two = DiaryEntryTwo.new("Wednesday", "Did she got up early?")
            entry_three = DiaryEntryTwo.new("Wednesday", "Why the hell did she got up early?")
            entry_four = DiaryEntryTwo.new("Wednesday", "Why the")
            entry_five = DiaryEntryTwo.new("Wednesday", "Why the hell you")
            new_diary.add(entry_one)
            new_diary.add(entry_two)
            new_diary.add(entry_three)
            new_diary.add(entry_four)
            new_diary.add(entry_five)
            expect(new_diary.find_best_entry_for_reading_time(4, 1)).to eq entry_five
        end
    end
end