def update_matrix(matrix)
    return matrix if matrix.length == 0
    
    dp = Array.new(matrix.length) { Array.new(matrix[0].length, 1.0 / 0) }
    
    (0...matrix.length).each do |r|
        (0...matrix[0].length).each do |c|
            if matrix[r][c] == 0
                dp[r][c] = 0
            else
                if r > 0
                    dp[r][c] = [dp[r][c], dp[r - 1][c] + 1].min
                end
                if c > 0
                    dp[r][c] = [dp[r][c], dp[r][c - 1] + 1].min
                end
            end
        end
    end
    
    r = matrix.length - 1
    while r >= 0
        c = matrix[0].length - 1
        while c >= 0
            if r < matrix.length - 1
               dp[r][c] = [dp[r][c], dp[r + 1][c] + 1].min
            end
            if c < matrix[0].length - 1
                dp[r][c] = [dp[r][c], dp[r][c + 1] + 1].min
            end
            c -= 1
        end
        r -= 1
    end
    
    dp
end