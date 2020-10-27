def max_sub_array_len(nums, k)
    sum = 0
    max = 0
    map = {}
    nums.each_with_index do |num, i|
        sum += num
        if sum == k
            max = i + 1
        elsif map[sum - k]
            max = [max, i - map[sum - k]].max
        end
        
        if !map[sum]
            map[sum] = i
        end
    end
    
    max
end