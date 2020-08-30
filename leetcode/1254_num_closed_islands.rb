def closed_island(grid)
    return 0 if !grid || grid.length == 0
    
    count = 0
    m = grid.length
    n = grid[0].length
    
    (0...m).each do |row|
        (0...n).each do |col|
            if grid[row][col] == 0
                if dfs(row, col, grid)
                    count += 1
                end
            end
        end
    end
    
    count
end

def dfs(r, c, grid)
    dirs = [[1,0], [0,1], [-1,0], [0,-1]]
    return false if r < 0 || r >= grid.length || c < 0 || c >= grid[0].length
    
    return true if grid[r][c] == 1
    grid[r][c] = 1
    res = true
    
    dirs.each do |dir|
        if !(dfs(r + dir.first, c + dir.last, grid))
            res = false
        end
    end
    res
end