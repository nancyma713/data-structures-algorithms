def largest_divisible_subset(nums)
    n = nums.length
    return [] if n == 0
    
    res = Array.new(n) { Array.new }
    nums = nums.sort
    
    (0...n).each do |i|
        max_subset = []
        (0...i).each do |j|
            if nums[i] % nums[j] == 0 && max_subset.length < res[j].length
                max_subset = res[j]
            end
        end
        res[i] += max_subset
        res[i] << nums[i]
    end
    
    ret = []
    (0...n).each do |i|
        if ret.length < res[i].length
            ret = res[i]
        end
    end
    ret
end