def find_shortest_sub_array(nums)
    left = {}
    right = {}
    count = Hash.new(0)
    
    nums.each_with_index do |num, i|
       if !left[num]
           left[num] = i
       end
        right[num] = i
        count[num] += 1
    end
    
    res = nums.length
    degree = count.values.max
    
    count.each do |k, v|
        if count[k] == degree
            res = [res, right[k] - left[k] + 1].min
        end
    end
    
    res
end