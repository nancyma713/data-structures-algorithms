def wiggle_sort(nums)
    #sorting
#     nums.sort!
    
#     i = 1
#     while i < nums.length - 1
#        temp = nums[i]
#         nums[i] = nums[i + 1]
#         nums[i + 1] = temp
#         i += 2
#     end
    
#     nums
    
    #linear
    less = true
    (0...nums.length - 1).each do |i|
        if less
            if nums[i] > nums[i + 1]
                temp = nums[i]
                nums[i] = nums[i + 1]
                nums[i + 1] = temp
            end
        else
            if nums[i] < nums[i + 1]
                temp = nums[i]
                nums[i] = nums[i + 1]
                nums[i + 1] = temp
            end
        end
        less = !less
    end
end