def pivot_index(nums)
#     i = 0
    
#     while i < nums.length
#         left = nums[0...i].sum
#         right = nums[i + 1..-1].sum
#         return i if left == right
#         i += 1
#     end
    
#     -1
    
    sum = 0
    left = 0
    
    nums.each do |n|
        sum += n
    end
    
    (0...nums.length).each do |i|
        if left == sum - left - nums[i]
            return i
        end
        left += nums[i]
    end
    
    -1
end

p pivot_index([1,7,3,6,5,6]) #=> 3
p pivot_index([1,2,3]) #=> -1