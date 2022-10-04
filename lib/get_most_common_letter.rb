def get_most_common_letter(text)
    counter = Hash.new(0)
    text.chars.each do |char|
        if (char == " ")
            counter[char] = 0
        end
      counter[char] += 1
    end
    return counter.to_a.sort_by { |k, v| v }.reverse[0][0]
end