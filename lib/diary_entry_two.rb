class DiaryEntryTwo
    def initialize(title, contents) # title, contents are strings
      # ...
      @title = title
      @contents = contents
      @starting_point = 0
    end
  
    def title
      # Returns the title as a string
      return @title
    end
  
    def contents
      # Returns the contents as a string
      return @contents
    end
  
    def count_words
      # Returns the number of words in the contents as an integer
      return @contents.split.length
    end
  
    def reading_time(wpm) # wpm is an integer representing
                          # the number of words the user can read per minute
      # Returns an integer representing an estimate of the reading time in minutes
      # for the contents at the given wpm.
      return (count_words.to_f / wpm.to_f).ceil
    end
  
    def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                    # of words the user can read per minute
                                    # `minutes` is an integer representing the
                                    # number of minutes the user has to read
      # Returns a string with a chunk of the contents that the user could read
      # in the given number of minutes.
      # If called again, `reading_chunk` should return the next chunk, skipping
      # what has already been read, until the contents is fully read.
      # The next call after that it should restart from the beginning.
      number_of_words = wpm * minutes
      result = @contents.split[@starting_point...@starting_point + number_of_words].join(' ')
      if (@starting_point + number_of_words >= @contents.split.length)
        @starting_point = 0
      else
        @starting_point += number_of_words
      end
      return result
    end
end