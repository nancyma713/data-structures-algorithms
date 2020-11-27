def find_pairs(nums, k)
    res = 0
    
    count = Hash.new(0)
    nums.each { |num| count[num] += 1 }
    
    count.each do |key, v|
        if k > 0 && count.include?(key + k)
            res += 1
        elsif k == 0 && v > 1
            res += 1
        end
    end
    
    res
end