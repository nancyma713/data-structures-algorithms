def replace_elements(arr)
    new_arr = Array.new(arr.length)
    
    i = new_arr.length - 1
    new_arr[new_arr.length - 1] = -1
    
    while i > 0
        new_arr[i - 1] = [new_arr[i], arr[i]].max
        i -= 1
    end
    
    new_arr
end

p replace_elements([17,18,5,4,6,1]) #=> [18,6,6,6,1,-1]