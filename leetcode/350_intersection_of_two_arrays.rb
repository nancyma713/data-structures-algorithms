def intersect(nums1, nums2)
    if nums1.length > nums2.length
        return intersect(nums2, nums1)
    end
    
    map = Hash.new(0)
    
    nums1.each do |num|
        map[num] += 1
    end
    
    k = 0
    res = []
    
    nums2.each do |num|
        count = map[num] || 0
        if count > 0
            res << num
            k += 1
            map[num] -= 1
        end
    end
    
    res
end