def vertical_order(root)
    return [] if !root
    
    columns = Hash.new { |h, k| h[k] = [] }
    min = 0
    max = 0
    queue = [ [root, 0] ]
    
    while !queue.empty?
        n = queue.shift
        node = n[0]
        col = n[1]
        
        if node
            columns[col] << node.val
            min = [min, col].min
            max = [max, col].max
            
            queue << [node.left, col - 1]
            queue << [node.right, col + 1]
        end
    end
    
    res = []
    
    (min..max).each do |i|
        res << columns[i]
    end
    
    res
end