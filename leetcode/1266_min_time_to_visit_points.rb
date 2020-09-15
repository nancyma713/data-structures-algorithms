def min_time_to_visit_all_points(points)
    res = 0
    point = points.pop
    x1 = point[0]
    y1 = point[1]
    
    while !points.empty?
        point2 = points.pop
        x2 = point2[0]
        y2 = point2[1]
        res += [(x2 - x1).abs, (y2 - y1).abs].max
        x1 = x2
        y1 = y2
    end
    
    res
end