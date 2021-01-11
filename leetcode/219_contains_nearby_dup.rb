def contains_nearby_duplicate(nums, k)
    map = {}
    nums.each_with_index do |num, i|
        if map[num] && (i - map[num]).abs <= k
            return true
        end
        map[num] = i
    end
    
    false
end