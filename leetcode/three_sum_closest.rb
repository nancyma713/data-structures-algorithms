def three_sum_closest(nums, target)
    diff = Float::INFINITY
    
    nums = nums.sort
    i = 0
    while (i < nums.length) && (diff != 0)
        left = i + 1
        right = nums.length - 1
        while left < right
            sum = nums[i] + nums[left] + nums[right]
            if (target - sum).abs < diff.abs
                diff = target - sum
            end
            if sum < target
                left += 1
            else
                right -= 1
            end
        end
        i += 1
    end
    target - diff
end

p three_sum_closest([-1,2,1,-4], 1) #=> 2
p three_sum_closest([-4,2,3,-1], 2) #=> 1
p three_sum_closest([-1,3,2,6], 3) #=> 4