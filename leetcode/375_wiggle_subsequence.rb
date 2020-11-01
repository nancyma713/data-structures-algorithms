def wiggle_max_length(nums)
    return nums.length if nums.length < 2
    
    up = Array.new(nums.length, 0)
    down = Array.new(nums.length, 0)
    
    (1...nums.length).each do |i|
       (0...i).each do |j|
          if nums[i] > nums[j]
              up[i] = [up[i], down[j] + 1].max
          elsif nums[i] < nums[j]
              down[i] = [down[i], up[j] + 1].max
          end
       end
    end
    
    return 1 + [down[nums.length - 1], up[nums.length - 1]].max
end