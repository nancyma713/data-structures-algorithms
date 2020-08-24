def search_matrix(matrix, target)
    return false if matrix.length == 0
    row = matrix.length - 1
    col = 0
    
    while row >= 0 && row < matrix.length && col >= 0 && col < matrix[0].length
        if matrix[row][col] == target
            return true
        elsif matrix[row][col] > target
            row -= 1
        else
            col += 1
        end
    end
    false
end