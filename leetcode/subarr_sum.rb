def subarray_sum(nums, k)
    count = 0
#     start = 0
#     while start < nums.length
#         sum = 0
#         last = start
#         while last < nums.length
#             sum += nums[last]
#             count += 1 if sum == k
#             last += 1
#         end
#         start += 1
#     end
    
#     count
    
    sum = 0
    hash = {}
    hash[0] = 1
    i = 0
    while i < nums.length
        sum += nums[i]
        if hash[sum - k]
            count += hash[sum - k]
        end
        if hash[sum]
            hash[sum] = hash[sum] + 1
        else
            hash[sum] = 1
        end
        i += 1
    end
    count
end

p subarray_sum([1,1,1], 2) #=> 2
p subarray_sum([15,5,1,4], 10) #=> 1
p subarray_sum([5,5,1,4,6], 10) #=> 3