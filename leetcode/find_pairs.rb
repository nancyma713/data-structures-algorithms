def find_pairs(nums, k)
    return 0 if nums.empty? || k < 0
    pairs = 0
    hash = Hash.new(0)
    
    nums.each { |num| hash[num] += 1 }
    
    hash.each do |key, v|
        if k == 0
            pairs += 1 if v >= 2
        else
            pairs += 1 if hash[key + k] > 0
        end
    end
    pairs
end

p find_pairs([3,1,4,1,5], 2) #=> 2
p find_pairs([1, 2, 3, 4, 5], 1) #=> 4