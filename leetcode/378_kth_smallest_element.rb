def kth_smallest(matrix, k)
    n = matrix.length
    start = matrix[0][0]
    last = matrix[n - 1][n - 1]
    
    while start < last
        mid = (start + last) / 2
        pair = [matrix[0][0], matrix[n - 1][n - 1]]
        count = count_less_equal(matrix, mid, pair)
        if count == k
            return pair[0]
        end
        if count < k
            start = pair[1]
        else
            last = pair[0]
        end
    end
    start
end

def count_less_equal(matrix, mid, pair)
    count = 0
    n = matrix.length
    row = n - 1
    col = 0
    
    while row >= 0 && col < n
        if matrix[row][col] > mid
            pair[1] = [pair[1], matrix[row][col]].min
            row -= 1
        else
            pair[0] = [pair[0], matrix[row][col]].max
            count += row + 1
            col += 1
        end
    end
    count
end