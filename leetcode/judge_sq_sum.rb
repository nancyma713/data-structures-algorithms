def judge_square_sum(c)
    return false if c == 1
    i = 0 
    
    while i * i <= c
        j = Math.sqrt(c - i * i)
        if j == j.to_i
            return true
        end
        i += 1
    end
    
    false
end

p judge_square_sum(5) #=> true
p judge_square_sum(3) #=> false
p judge_square_sum(10) #=> true