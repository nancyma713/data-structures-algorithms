def valid_mountain_array(a)
    return false if a.length < 3
    
    peak_idx = a.index(a.max)
    return false if peak_idx == 0 || peak_idx == a.length - 1
    
    (0...peak_idx).each do |i|
        return false if a[i] >= a[i + 1] 
    end
    
    (peak_idx...a.length - 1).each do |j|
        return false if a[j] <= a[j + 1]
    end
    
    true
end

p valid_mountain_array([1,2]) #=> false
p valid_mountain_array([3,5,5]) #=> false
p valid_mountain_array([1,2,3,1]) #=> true