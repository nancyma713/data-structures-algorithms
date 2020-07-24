def single_number(nums)
    hash = Hash.new(0)
    
    nums.each do |num|
        hash[num] += 1
    end
    
    res = []
    hash.each do |k, v|
        res << k if v == 1
    end
    
    res
end

p single_number([1,2,1,3,2,5]) #=> [3, 5]
p single_number([1,7,1,4,7,1,9]) #=> [4, 9]