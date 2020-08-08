def maximum_product(nums)
    min1 = 1.0 / 0
    min2 = 1.0 / 0
    max1 = -1.0 / 0
    max2 = -1.0 / 0
    max3 = -1.0 / 0
    
    nums.each do |num|
       if num <= min1
           min2 = min1
           min1 = num
       elsif num <= min2
           min2 = num
       end
        
        if num >= max1
            max3 = max2
            max2 = max1
            max1 = num
        elsif num >= max2
            max3 = max2
            max2 = num
        elsif num >= max3
            max3 = num
        end
    end
    [min1 * min2 * max1, max1 * max2 * max3].max
end

p maximum_product([1,2,3]) #=> 6
p maximum_product([1,2,3,4]) #=> 24
p maximum_product([-1,-2,3,4]) #=> 8