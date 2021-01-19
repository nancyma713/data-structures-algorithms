def max_area(height)
    max = 0
    
    start = 0
    last = height.length - 1
    
    while start < last
        vol = [height[start], height[last]].min * (last - start)
        max = [max, vol].max
        
        if height[start] < height[last]
            start += 1
        else
            last -= 1
        end
    end
    
    max
end