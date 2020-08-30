def count_squares(matrix)
    return 0 if !matrix || matrix.length == 0
    
    rows = matrix.length
    cols = matrix[0].length
    total = 0
    
    (0...rows).each do |r|
        (0...cols).each do |c|
            if matrix[r][c] == 1
                if r == 0 || c == 0
                    total += 1
                else
                    cell = [matrix[r - 1][c - 1], matrix[r][c - 1], matrix[r - 1][c]].min + matrix[r][c]
                    total += cell
                    matrix[r][c] = cell
                end
            end
        end
    end
    
    total
end