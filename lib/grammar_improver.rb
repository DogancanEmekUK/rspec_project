class GrammarImprover
    def grammar_improver(string)
        fail "No text to be checked!" if string.empty?
        beginning = string.split[0]
        ending = string.split.last
        if (beginning[0].ord >= 65 && beginning[0].ord <= 90)
            if (ending[ending.length-1] == '.' || ending[ending.length-1] == '!' || ending[ending.length-1] == '?')
                return true
            else
                return false
            end
        else
            return false
        end
    end
end