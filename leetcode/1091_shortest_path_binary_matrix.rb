def shortest_path_binary_matrix(grid)
    if grid[0][0] != 0 || grid[grid.length - 1][grid[0].length - 1] != 0
        return -1
    end
    
    queue = [[0, 0, 1]]
    visited = Array.new(grid.length) { Array.new(grid[0].length, false) }
    visited[0][0] = true
    
    while !queue.empty?
        cell = queue.shift
        row = cell[0]
        col = cell[1]
        distance = cell[2]
        if (row == grid.length - 1) && (col == grid.length - 1)
            return distance
        end
        
        neighbors = get_neighbors(grid, row, col)

        neighbors.each do |nei|
            nei_row = nei[0]
            nei_col = nei[1]
            next if visited[nei_row][nei_col] == true
            visited[nei_row][nei_col] = true
            queue << [nei_row, nei_col, distance + 1]
        end
    end

    -1
end

def get_neighbors(grid, row, col)
    dirs = [[-1, -1], [-1, 0], [-1, 1], [0, -1], [0, 1], [1, -1], [1, 0], [1, 1]]
    neighbors = []
    
    dirs.each do |dir|
        new_row = row + dir[0]
        new_col = col + dir[1]
        if new_row >= 0 && new_row < grid.length && new_col >= 0 && new_col < grid.length && grid[new_col][new_row] == 0
            neighbors << [new_row, new_col]
        end
    end
    neighbors
end