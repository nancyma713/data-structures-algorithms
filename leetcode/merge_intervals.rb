def merge(intervals)
    return intervals if intervals.length == 1
    output = []
    
    intervals = intervals.sort
    
    i = 0

    while i < intervals.length
       if output.empty? || output[-1][1] < intervals[i][0]
            output << intervals[i]
       else
           output[-1][1] = [output[-1][1], intervals[i][1]].max
       end
        i += 1
    end
        
    output
end

p merge([[1,3],[2,6],[8,10],[15,18]]) #=> [[1,6],[8,10],[15,18]]
p merge([[1,4],[4,5]]) #=> [[1,5]]
p merge([[1,6]]) #=> [[1,6]]