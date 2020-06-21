def find_unsorted_subarray(nums)
    sorted = nums.sort
    start_idx = 0
    end_idx = nums.length - 1
    
    return 0 if nums == sorted
    
    while start_idx < nums.length
        if nums[start_idx] == sorted[start_idx]
            start_idx += 1
        else
            break
        end
    end
    
    while end_idx > 0
        if nums[end_idx] == sorted[end_idx]
            end_idx -= 1
        else
            break
        end
    end
    
    nums[start_idx..end_idx].length
end

p find_unsorted_subarray([2, 6, 4, 8, 10, 9, 15]) #=> 5
p find_unsorted_subarray([2, 3, 4, 8, 10, 9, 18]) #=> 2
p find_unsorted_subarray([5, 3, 4, 8, 10, 9, 18]) #=> 6