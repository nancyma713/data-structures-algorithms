def intersection(nums1, nums2)
    res = []
    set = nums1.length > nums2.length ? Set.new(nums1) : Set.new(nums2)
    nums = nums1.length > nums2.length ? Set.new(nums2) : Set.new(nums1)
    
    nums.each do |num|
        if set.include?(num)
            res << num
        end
    end
    
    res
end