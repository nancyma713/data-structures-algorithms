def erase_overlap_intervals(intervals)
    count = 0
    return count if intervals.length == 0
    
    intervals.sort!
    last_int = 0
    
    (1...intervals.length).each do |i|
        interval = intervals[i]
        
        if interval[0] < intervals[last_int][1]
            if interval[1] < intervals[last_int][1]
               last_int = i 
            end
            count += 1
        else
            last_int = i
        end
    end
    
    count
end