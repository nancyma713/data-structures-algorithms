def arrange_coins(n)
    left = 0
    right = n
    while left <= right
        mid = (left + right) / 2
        curr = mid * (mid + 1) / 2
        
        return mid if curr == n
        
        if curr > n
           right = mid - 1
        else
            left = mid + 1
        end
    end
    right
end