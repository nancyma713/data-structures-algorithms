def combination_sum(candidates, target)
    candidates.sort!
    
    res = []
    
    dfs(res, [], candidates, target, 0)
    res
end

def dfs(res, curr, nums, target, i)
    if target == 0
        res.push(curr.clone)
        return
    end
    
    return if nums[i].nil? || target < nums[i]
    
    (i...nums.length).each do |idx|
        next if (nums[idx] == nums[idx - 1]) && i < idx
        break if nums[idx] > target
        
        curr.push(nums[idx])
        dfs(res, curr, nums, target - nums[idx], idx + 1)
        curr.pop
    end
end