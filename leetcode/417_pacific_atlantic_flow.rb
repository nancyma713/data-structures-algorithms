def pacific_atlantic(matrix)
    return [] if matrix.length == 0 || matrix[0].length == 0
    
    n = matrix.length
    m = matrix[0].length
    land_heights = matrix
    
    pacific_q = []
    atlantic_q = []
    
    (0...n).each do |r|
        pacific_q << [r, 0]
        atlantic_q << [r, m - 1]
    end
    
    (0...m).each do |c|
        pacific_q << [0, c]
        atlantic_q << [n - 1, c]
    end
    
    pacific_reach = dfs(pacific_q, land_heights)
    atlantic_reach = dfs(atlantic_q, land_heights)
    
    common_cells = []
    (0...n).each do |r|
        (0...m).each do |c|
            if pacific_reach[r][c] && atlantic_reach[r][c]
                common_cells << [r, c]
            end
        end
    end
    
    common_cells
end

def dfs(queue, matrix)
    dirs = [[1,0], [0,1], [-1,0], [0,-1]]
   reachable = Array.new(matrix.length) { Array.new(matrix[0].length, false) } 
    
    while !queue.empty?
        cell = queue.shift
        reachable[cell[0]][cell[1]] = true
        dirs.each do |dir|
            new_row = cell[0] + dir[0]
            new_col = cell[1] + dir[1]
            if new_row < 0 || new_row >= matrix.length || new_col < 0 || new_col >= matrix[0].length || reachable[new_row][new_col]
                next
            end
            if matrix[new_row][new_col] < matrix[cell[0]][cell[1]]
                next
            end
            queue << [new_row, new_col]
        end
    end
    reachable
end