def get_modified_array(length, updates)
    arr = Array.new(length, 0)
    return arr if updates.length == 0
    
    updates.each do |update|
        start = update[0]
        last = update[1]
        incr = update[2]
        
        arr[start] += incr
        
        if last < length - 1
            arr[last + 1] -= incr
        end
    end
        
    sum = 0
    (0...length).each do |i|
        sum += arr[i]
        arr[i] = sum
    end
    
    arr
end