class ReadingTime
    def initialize(string, time)
        @string = string
        @time = time
    end
    def reading_time
        reading_time_in_minutes = @string.split.size.to_f / 200
        return "You can read this text in #{reading_time_in_minutes} minutes."
    end
end