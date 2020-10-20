def sum_numbers(root)
    sum = 0
    
    stack = [[root, 0]]
    
    while !stack.empty?
        n = stack.pop
        node = n[0]
        curr = n[1]
        
        if node
            curr = curr * 10 + node.val
            if node.left.nil? && node.right.nil?
                sum += curr
            else
                stack.push([node.right, curr])
                stack.push([node.left, curr])
            end
        end
    end
    sum
end