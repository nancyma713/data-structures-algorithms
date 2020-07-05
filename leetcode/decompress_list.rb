def decompress_rl_elist(nums)
    i = 0
    output = []
    
    while i < nums.length - 1
        arr = [nums[i + 1]] * nums[i]
        output += arr
        i += 2
    end
    
    output
end

p decompress_rl_elist([1,2,3,4]) #=> [2, 4, 4, 4]
p decompress_rl_elist([1,1,2,3]) #=> [1, 3, 3]