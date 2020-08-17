def find_kth_positive(arr, k)
    i = 1
    j = 0 
    count = 0
    
    while count < k && j < arr.length
       if i == arr[j]
           i += 1
           j += 1
       elsif i < arr[j]
           count += 1
           i += 1
       end
    end

    while count < k
       i += 1 
       count += 1
    end

    i - 1
end

p find_kth_positive([2,3,4,7,11], 5) #=> 9
p find_kth_positive([1,2,3,4], 2) #=> 6