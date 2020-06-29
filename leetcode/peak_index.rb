def peak_index_in_mountain_array(a)
    low = 0
    high = a.length - 1
    
    while low < high
        mid = (low + high) / 2
        if a[mid] < a[mid + 1]
            low = mid + 1
        else
            high = mid
        end
    end
    low
end

p peak_index_in_mountain_array([0,1,0]) #=> 1
p peak_index_in_mountain_array([0,2,1,0]) #=> 1
p peak_index_in_mountain_array([0,1,0,4,3,1]) #=> 3