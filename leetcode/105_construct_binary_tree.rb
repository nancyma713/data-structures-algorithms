def build_tree(preorder, inorder)
    idx = {}
    inorder.each_with_index do |val, i|
       idx[val] = i 
    end
    
    stack = []
    head = nil
    
    preorder.each do |val|
       if !head
           head = TreeNode.new(val)
           stack << head
       else
           node = TreeNode.new(val)
           if idx[val] < idx[stack.last.val]
               stack.last.left = node
           else
               while !stack.empty? && idx[stack.last.val] < idx[val]
                   n = stack.pop
               end
               n.right = node
           end
           stack << node
       end
    end
    head
end