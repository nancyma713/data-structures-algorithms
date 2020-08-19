def missing_element(nums, k)
    left = 0
    right = nums.length - 1
    
    if k > missing(nums, right)
       return nums[-1] + k - missing(nums, right) 
    end
    
    while left < right
        mid = left + (right - left ) / 2
        
        if missing(nums, mid) < k
            left = mid + 1
        else
            right = mid
        end
    end
    
    return nums[left - 1] + k - missing(nums, left - 1)
end

def missing(nums, i)
    nums[i] - nums.first - i
end