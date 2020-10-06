def interval_intersection(a, b)
    res = []
    i = 0
    j = 0
    
    while i < a.length && j < b.length
        low = [a[i][0], b[j][0]].max
        high = [a[i][1], b[j][1]].min
        
        if low <= high
            res << [low, high]
        end
        
        if a[i][1] < b[j][1]
            i += 1
        else
            j += 1
        end
    end
    
    res
end