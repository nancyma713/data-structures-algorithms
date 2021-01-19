def find_circle_num(is_connected)
    provinces = 0
    visited = Array.new(is_connected.length, 0)
    
    queue = []
    
    (0...is_connected.length).each do |i|
        if visited[i] == 0
            queue << i
            while !queue.empty?
                city = queue.shift
                visited[city] = 1
                (0...is_connected.length).each do |j|
                    if is_connected[city][j] == 1 && visited[j] == 0
                        queue << j 
                    end
                end
            end
            provinces += 1
        end
    end
    
    provinces
end