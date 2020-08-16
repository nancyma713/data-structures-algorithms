def can_be_equal(target, arr)
    hash = Hash.new(0)
    
    target.each do |n|
        hash[n] += 1
    end
    
    arr.each do |n|
        hash[n] -= 1
    end
    
    hash.values.all? { |n| n == 0 }
end

p can_be_equal([1,2,3,4], [2,4,1,3]) #=> true
p can_be_equal([1,12], [12,1]) #=> true
p can_be_equal([3,7,9], [3,7,11]) #=> false