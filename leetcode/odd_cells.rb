def odd_cells(n, m, indices)
    matrix = Array.new(n) { Array.new(m, 0)}

    indices.each do |idx|
        row = idx[0]
        col = idx[1]
        
        matrix[row].each_with_index { |ele, i| matrix[row][i] += 1 }
        matrix.each { |r| r[col] += 1 }
    end

    matrix.flatten.select { |ele| ele.odd? }.count
end

p odd_cells(2, 3, [[0,1],[1,1]]) #=> 6
p odd_cells(2, 2, [[1,1],[0,0]]) #=> 0