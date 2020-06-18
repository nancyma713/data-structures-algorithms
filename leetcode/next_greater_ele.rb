def next_greater_element(nums1, nums2)
    output = []
    
    nums1.each do |num|
        num_index = nums2.index(num)
        output << -1 if num_index == nums2.length - 1
        (num_index + 1...nums2.length).each do |idx2|
            if nums2[idx2] > num
                output << nums2[idx2]
                break
            end
            if idx2 == nums2.length - 1
                output << -1
            end
        end
    end
    
    output
end

p next_greater_element([4,1,2], [1,3,4,2]) #=> [-1,3,-1]
p next_greater_element([2,4], [1,2,3,4]) #=> [3,-1]