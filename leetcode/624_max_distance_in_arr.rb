def max_distance(arrays)
    res = 0
    min = arrays[0][0]
    max = arrays[0][-1]
    
    (1...arrays.length).each do |i|
        length = arrays[i].length
        res = [res, [(arrays[i][length - 1] - min).abs, (max - arrays[i][0]).abs].max].max
        min = [min, arrays[i][0]].min
        max = [max, arrays[i][length - 1]].max
    end
    
    res
end