def find_mode(root)
    return [] if !root
    counts = Hash.new(0)
    
    queue = [root]
    
    while !queue.empty?
        node = queue.shift
        counts[node.val] += 1
        queue << node.left if node.left
        queue << node.right if node.right
    end
    
    max = counts.values.max
    res = []
    
    counts.each do |k, v|
        res << k if v == max
    end
    
    res
end