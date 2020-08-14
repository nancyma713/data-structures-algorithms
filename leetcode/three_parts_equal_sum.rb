def can_three_parts_equal_sum(a)
    average = a.sum / 3
    
    count = 0
    cur_sum = 0
    i = 0
    
    while i < a.length
        cur_sum += a[i]
        i += 1

        if cur_sum == average
            count += 1
            cur_sum = 0
        end
    end

    count >= 3
end

p can_three_parts_equal_sum([0,2,1,-6,6,-7,9,1,2,0,1]) #=> true
p can_three_parts_equal_sum([0,2,1,-6,6,7,9,-1,2,0,1]) #=> false
p can_three_parts_equal_sum([3,3,6,5,-2,2,5,1,-9,4]) #=> true
p can_three_parts_equal_sum([10,-10,10,-10,10,-10,10,-10]) #=> true