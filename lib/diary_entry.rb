class DiaryEntry
    def initialize(title, contents)
      @title = title
      @contents = contents
      @starting_point = 0
    end
  
    def title
      return @title
    end
  
    def contents
      return @contents
    end
  
    def count_words
      return @contents.split.size
    end
  
    def reading_time(wpm) 
      return wpm * count_words
    end
  
    def reading_chunk(wpm, minutes)
      result = @contents.split[@starting_point...@starting_point + wpm * minutes].join(' ')
      @starting_point += wpm * minutes
      return result
    end
end