def right_side_view(root)
    return [] if !root
    
    right = []
    queue = [root]
    
    while !queue.empty?
        level_length = queue.length
        
        (0...level_length).each do |i|
            node = queue.shift
            
            right << node.val if i == level_length - 1
            queue << node.left if node.left
            queue << node.right if node.right
        end
    end
    
    right
end