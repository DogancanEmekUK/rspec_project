class PersonalDiary
    def initialize(string)
        @string = string
    end
    def make_snippet
        words = 5
        return "#{@string.split[0..words-1].join(' ')}..."
    end
    def word_count
        return @string.split.size
    end
end