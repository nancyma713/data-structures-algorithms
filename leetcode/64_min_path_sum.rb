def min_path_sum(grid)
    r = grid.length - 1
    while r >= 0
        c = grid[0].length - 1
        while c >= 0
            if r == grid.length - 1 && c != grid[0].length - 1
                grid[r][c] = grid[r][c] + grid[r][c + 1]
            elsif r != grid.length - 1 && c == grid[0].length - 1
                grid[r][c] = grid[r + 1][c] + grid[r][c]
            elsif r != grid.length - 1 && c != grid[0].length - 1
                grid[r][c] = grid[r][c] + [grid[r + 1][c], grid[r][c + 1]].min
            end
            c -= 1
        end
        r -= 1    
    end
    grid[0][0]
end