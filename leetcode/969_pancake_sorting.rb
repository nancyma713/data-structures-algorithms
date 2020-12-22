def pancake_sort(arr)
    ans = []
    
    i = arr.length
    while i > 0
        index = find(arr, i)

        if index != i - 1
            if index != 0
                ans << index + 1
                flip(arr, index + 1)
            end
            ans << i
            flip(arr, i)
        end
        
        i -= 1
    end
    
    ans
end

def flip(arr, k)
    i = 0
    while i < k / 2
        arr[i], arr[k - i - 1] = arr[k - i - 1], arr[i]
        i += 1
    end
end

def find(arr, target)
   (0...arr.length).each do |i|
        if arr[i] === target
            return i
        end
   end
    -1
end