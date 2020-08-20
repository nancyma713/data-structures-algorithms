def min_knight_moves(x, y)
    dirs = [[2,1], [2,-1], [1,2], [1,-2], [-2,1], [-2,-1], [-1,2], [-1,-2]]
    queue = [[0, 0]]
    level = 0
    visited = Set.new()
    
    while !queue.empty?
        temp = []
        
        while !queue.empty?
            curr = queue.shift
            if curr.first == x && curr.last == y
                return level
            end
            
            dirs.each do |dir|
                next_x = dir.first + curr.first
                next_y = dir.last + curr.last
                if !visited.include?([next_x, next_y])
                    temp << [next_x, next_y]
                    visited.add([next_x, next_y])
                end
            end
        end
        queue = temp
        level += 1
    end
end

p min_knight_moves(217, 47) #=> 110