def nth_ugly_number(n)
    uglies = [1]
    i2 = 0
    i3 = 0
    i5 = 0
    
    (n - 1).times do
       candidates = [2 * uglies[i2], 3 * uglies[i3], 5 * uglies[i5]] 
        min = candidates.min
        
        i2 += 1 if min == 2 * uglies[i2]
        i3 += 1 if min == 3 * uglies[i3]
        i5 += 1 if min == 5 * uglies[i5]
        
        uglies << min
    end
    
    return uglies.last
end

p nth_ugly_number(5) #=> 5
p nth_ugly_number(10) #=> 12
p nth_ugly_number(14) #=> 20