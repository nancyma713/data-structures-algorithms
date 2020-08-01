def product_except_self(nums)
    length = nums.length
    left = Array.new(length)
    right = Array.new(length)
    res = Array.new(length)
    
    left[0] = 1
    i = 1
    while i < nums.length
        left[i] = left[i - 1] * nums[i - 1]
        i += 1
    end
    
    right[length - 1] = 1
    j = length - 2
    while j >= 0
        right[j] = right[j + 1] * nums[j + 1]
        j -= 1
        
    end
    
    res.each_with_index do |num, idx|
        res[idx] = left[idx] * right[idx]
    end
    
    res
end

p product_except_self([1,2,3,4]) #=> [24,12,8,6]