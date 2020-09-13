def search_range(nums, target)
    target_range = [-1, -1]
    
    left_idx = bsearch(nums, target, true)
    
    if left_idx == nums.length || nums[left_idx] != target
        return target_range
    end
    
    target_range[0] = left_idx
    target_range[1] = bsearch(nums, target, false) - 1
    
    target_range
end
    
def bsearch(nums, target, left)
    low = 0
    high = nums.length
    
    while low < high
        mid = (low + high) / 2
        if nums[mid] > target || (left && target == nums[mid])
            high = mid
        else
            low = mid + 1
        end
    end
    
    low
end