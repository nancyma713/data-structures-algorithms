def summary_ranges(nums)
    res = []
    i = 0
    j = 0
    while j < nums.length
        if j + 1 < nums.length && nums[j + 1] == nums[j] + 1
            j += 1
            next
        end
        if i == j
            res << nums[i].to_s + ""
        else
            res << nums[i].to_s + '->' + nums[j].to_s
        end
        
        i = j + 1
        j += 1
    end
    res
end