def find_max_average(nums, k)
    cur_max = nums[0...k].reduce(&:+)
    cur_sum = cur_max
    
    i = 0
    while i < nums.length - k
        cur_sum = cur_sum - nums[i] + nums[i + k]
        cur_max = [cur_sum, cur_max].max
        i += 1
    end
    
    (cur_max / k.to_f)
end


p find_max_average([1,12,-5,-6,50,3], 4) #=> 12.75