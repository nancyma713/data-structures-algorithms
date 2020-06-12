def move_zeroes(nums)
    lastNonZero = 0
    
    nums.each_with_index do |num, idx|
        if num != 0
            nums[lastNonZero] = nums[idx]
            lastNonZero += 1
        end
    end
    
    i = lastNonZero
    while i < nums.length
        nums[i] = 0
        i += 1
    end
    nums
end

p move_zeroes([0,1,0,3,12]) #=> [1,3,12,0,0]
p move_zeroes([0,8,0,5,0,11]) #=> [8,5,11,0,0,0]
p move_zeroes([1,1,0,3,17,0]) #=> [1,1,3,17,0,0]