def three_sum(nums)
    res = []
    return res if nums.empty? || nums.length < 3
    nums.sort!
    
    (0...nums.length).each do |i|
        a = nums[i]
        b_i = i + 1
        c_i = nums.length - 1
        
        if a == nums[i - 1] && i > 0
            next
        end
        
        while b_i < c_i
            b = nums[b_i]
            c = nums[c_i]
            
            if a + b + c > 0
                c_i -= 1
            elsif a + b + c < 0
                b_i += 1
            else
                res << [a, b, c] 
                b_i += 1
                c_i -= 1
            end
        end
    end
    
    res.uniq
end