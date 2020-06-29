def transpose(a)
    row = a.length
    column = a[0].length
    res = Array.new(column) { Array.new(row) }
    
    a.each_with_index do |row, idx1|
        row.each_with_index do |ele, idx2|
            res[idx2][idx1] = ele
        end
    end
    
    res
end

p transpose([[1,2,3],[4,5,6],[7,8,9]]) #=> [[1,4,7],[2,5,8],[3,6,9]]
p transpose([[1,2,3],[4,5,6]]) #=> [[1,4],[2,5],[3,6]]