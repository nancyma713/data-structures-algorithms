# class Node
#     attr_accessor :val, :neighbors
#     def initialize(val = 0, neighbors = nil)
#		  @val = val
#		  neighbors = [] if neighbors.nil?
#         @neighbors = neighbors
#     end
# end

# @param {Node} node
# @return {Node}
def cloneGraph(node)
    return node if !node
    visited = {}
    
    queue = [node]
    visited[node] = Node.new(node.val, [])
    
    while !queue.empty?
        n = queue.shift
        
        n.neighbors.each do |nei|
            if !visited[nei]
                visited[nei] = Node.new(nei.val, [])
                queue << nei
            end
            visited[n].neighbors << visited[nei]
        end
    end
    visited[node]
end