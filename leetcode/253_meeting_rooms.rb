def min_meeting_rooms(intervals)
    count = 0
    return count if !intervals
    
    start = intervals.sort_by { |int| int.first }
    finish = intervals.sort_by { |int| int.last }
    
    s = 0
    e = 0
    
    while s < intervals.length
        if start[s][0] >= finish[e][1]
            count -= 1
            e += 1
        end
        count += 1
        s += 1
    end
    count
end