def distance_k(root, target, k)
    @parents = {}
    dfs(root, nil)
    queue = [nil, target]
    seen = Set.new()
    seen.add(target)
    seen.add(nil)
    res = []
    
    dist = 0
    while !queue.empty?
        node = queue.shift
        if node
            if !seen.include?(node.left)
                seen.add(node.left)
                queue << node.left
            end

            if !seen.include?(node.right)
                seen.add(node.right)
                queue << node.right
            end
            
            if !seen.include?(@parents[node])
                seen.add(@parents[node])
                queue << @parents[node]
            end
        else
            if dist == k
                queue.each { |node| res << node.val }
                return res
            end
            queue << nil
            dist += 1
        end
    end
    []
end

def dfs(node, par)
    if node
        @parents[node] = par
        dfs(node.left, node)
        dfs(node.right, node)
    end
end