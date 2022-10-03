class To_do
    def check_task(string)
        if (string.empty?)
            fail "Incorrect value"
        else
            if (string.include?("#TODO"))
                return true
            else
                return false
            end
        end
    end
end