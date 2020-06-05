def find_lucky(arr)
    hash = Hash.new(0)
    lucky = []
    
    arr.each do |num|
        hash[num] += 1
    end
    
    hash.each do |key, val|
        lucky << key if key == val
    end
    
    if lucky.empty?
        return -1
    else
        return lucky.max
    end
end

p find_lucky([2,2,3,4]) # => 2
p find_lucky([1,2,2,3,3,3]) # => 3
p find_lucky([2,2,2,3,3]) # => -1