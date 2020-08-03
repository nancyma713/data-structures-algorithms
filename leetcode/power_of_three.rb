def is_power_of_three(n)
    return false if n <= 0
    
    while n >= 1
        return true if n == 1
        if n % 3 != 0
            return false
        else
            n /= 3
        end
    end

end

p is_power_of_three(5) #=> false
p is_power_of_three(0) #=> false
p is_power_of_three(1) #=> true
p is_power_of_three(81) #=> true