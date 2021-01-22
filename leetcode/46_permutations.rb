def permute(nums)
    res = []
    
    backtrack(nums, res, [])
    
    res
end

def backtrack(nums, res, curr)
    left = nums - curr
    res.push(curr) if left.empty?
    
    left.each do |i|
        backtrack(left, res, curr + [i])
    end
end