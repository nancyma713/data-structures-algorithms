def find_length_of_lcis(nums)
    return 0 if nums.empty?
    longest = 1
    sub = 0
    i = 1
    
    while i < nums.length
        if nums[i] <= nums[i - 1]
            sub = i
        end
        longest = [longest, i - sub + 1].max
        i += 1
    end
    longest
end

p find_length_of_lcis([1,3,5,4,7]) #=> 3
p find_length_of_lcis([2,2,2,2,2]) #=> 1
p find_length_of_lcis([]) #=> 0