def judge_square_sum(c)
    a = 0
    
    while a * a <= c
        b = Math.sqrt(c - a * a)
        
        return true if b == b.to_i
        a += 1
    end
    
    false
end

p judge_square_sum(5) #=> true
p judge_square_sum(3) #=> false
p judge_square_sum(17) #=> true