class GrammarStats
    def initialize
      @pass = 0
      @fail = 0
    end
  
    def check(text)
      fail "No text to be checked!" if text.empty?
        beginning = text.split[0]
        ending = text.split.last
        if (beginning[0].ord >= 65 && beginning[0].ord <= 90)
            if (ending[ending.length-1] == '.' || ending[ending.length-1] == '!' || ending[ending.length-1] == '?')
                @pass += 1
                return true
            else
                @fail += 1
                return false
            end
        else
            @fail += 1
            return false
        end
    end
  
    def percentage_good
      return (100 / (@pass + @fail)) * @pass
    end
end