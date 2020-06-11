def contains_nearby_duplicate(nums, k)
    hash = {}
    nums.each_with_index do |num, idx|
        return true if hash[num] && (idx - hash[num] <= k)
        hash[num] = idx
    end
    false
end

p contains_nearby_duplicate([1,2,3,1], 3) #=> true
p contains_nearby_duplicate([1,0,1,1], 1) #=> true
p contains_nearby_duplicate([1,2,3,1,2,3], 2) #=> false