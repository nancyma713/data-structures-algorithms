def num_identical_pairs(nums)
    hash = Hash.new(0)
    good = 0
    
    nums.each do |n|
        hash[n] += 1
    end
    
    hash.each do |k, v|
        val = v * (v - 1) / 2
        good += val
    end
    
    good
end