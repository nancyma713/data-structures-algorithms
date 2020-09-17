def next_permutation(nums)
    i = nums.length - 2
    while i >= 0 && nums[i + 1] <= nums[i]
        i -= 1
    end
    if i >= 0
        j = nums.length - 1
        while j >= 0 && nums[j] <= nums[i]
            j -= 1
        end
        nums[i], nums[j] = nums[j], nums[i]
    end
       
    reverse(nums, i + 1)
end

def reverse(nums, start)
    i = start
    j = nums.length - 1
    while i < j
        nums[i], nums[j] = nums[j], nums[i]
        i += 1
        j -= 1
    end
end