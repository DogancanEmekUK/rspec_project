require 'reading_time'

RSpec.describe ReadingTime do
    it "tells the time of reading according to the length of a text" do
        time = ReadingTime.new("The self-study lessons in this section are written and organised according to the levels of the Common European Framework of Reference for languages (CEFR). There are different types of texts and interactive exercises that practise the reading skills you need to do well in your studies, to get ahead at work and to communicate in English in your free time.", 200)
        result = time.reading_time()
        expect(result).to eq ("You can read this text in #{0.3} minutes.")
    end
end