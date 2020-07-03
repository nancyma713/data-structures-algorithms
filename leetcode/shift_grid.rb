def shift_grid(grid, k)
    m = grid.length
    n = grid[0].length
    k.times do
        prev = grid[m - 1][n - 1] 
        (0...m).each do |row|
            (0...n).each do |col|
                temp = grid[row][col]
                grid[row][col] = prev
                prev = temp
            end
        end
    end
    
    grid
end

p shift_grid([[1,2,3],[4,5,6],[7,8,9]], 1) #=> [[9,1,2],[3,4,5],[6,7,8]]
p shift_grid([[1,2,3],[4,5,6],[7,8,9]], 9) #=> [[1,2,3],[4,5,6],[7,8,9]]