def exist(board, word)
    return false if !board
    
    (0...board.length).each do |r|
        (0...board[0].length).each do |c|
            return true if dfs(board, word, r, c)
        end
    end
    false
end

def dfs(board, word, r, c)
    return true if word.length == 0
    return false if r < 0 || r >= board.length || c < 0 || c >= board[0].length || word[0] != board[r][c]
    
    temp = board[r][c]
    board[r][c] = "#"
    rest = word[1..-1]
    
    res = dfs(board, rest, r + 1, c) || dfs(board, rest, r - 1, c) || dfs(board, rest, r, c + 1) || dfs(board, rest, r, c - 1)
    
    board[r][c] = temp
    
    res
end