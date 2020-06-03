def number_of_steps (num)
    count = 0
    return count if num == 0
    
    while num != 0
        if num % 2 == 0
            num = num / 2
            count += 1
        else
            num = num - 1
            count += 1
        end
    end
    count
end

p number_of_steps(14) #=> 6
p number_of_steps(8) #=> 4
p number_of_steps(123) #=> 13