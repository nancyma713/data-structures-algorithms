def candy_crush(board)
    r = board.length
    c = board[0].length
    
    crush = false
    
    (0...r).each do |row|
        (0...(c - 2)).each do |col|
            val = (board[row][col]).abs
            if val != 0 && (val == (board[row][col + 1]).abs) && (val == (board[row][col + 2]).abs)
                board[row][col] = -val
                board[row][col + 1] = -val
                board[row][col + 2] = -val
                crush = true
            end
        end
    end
    
    (0...(r - 2)).each do |row|
        (0...c).each do |col|
            val = (board[row][col]).abs
            if val != 0 && (val == (board[row + 1][col]).abs) && (val == (board[row + 2][col]).abs)
                board[row][col] = -val
                board[row + 1][col] = -val
                board[row + 2][col] = -val
                crush = true
            end
        end
    end
    
    (0...c).each do |col|
        wr = r - 1
        row = r - 1
        while row >= 0
            if board[row][col] > 0
                board[wr][col] = board[row][col]
                wr -= 1
            end
            row -= 1
        end
        while wr >= 0
            board[wr][col] = 0
            wr -= 1
        end
    end
    
    crush ? candy_crush(board) : board
end