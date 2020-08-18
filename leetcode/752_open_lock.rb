def open_lock(deadends, target)
    return -1 if deadends.include?(target) || deadends.include?('0000')
    
    queue = [['0000', 0]]
    seen = { '0000' => true }
    
    while !queue.empty?
        x = queue.shift
        node = x[0]
        depth = x[1]
        return depth if node == target
        next if deadends.include?(node)
        neighbors = bfs(node) 

        neighbors.each do |n|
            if !seen[n]
                seen[n] = true
                queue << [n, depth + 1]
            end
        end
    end
    -1
end

def bfs(node)
    neighbors = []
   (0...4).each do |i|
        x = node[i].to_i
       [-1, 1].each do |j|
            y = (x + j) % 10
            neighbors << node[0...i] + y.to_s + node[i + 1..-1]
       end
   end
    neighbors
end

p open_lock(["8887","8889","8878","8898","8788","8988","7888","9888"], "8888") #=> -1
p open_lock(["8888"], "0009") #=> 1