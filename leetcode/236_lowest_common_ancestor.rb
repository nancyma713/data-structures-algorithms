def lowest_common_ancestor(root, p, q)
    # return nil if !root
#     stack = [root]
#     parent = { root => nil }
    
#     while !parent[p] || !parent[q]
#         node = stack.pop
#         if node.left
#             parent[node.left] = node
#             stack << node.left
#         end
#         if node.right
#             parent[node.right] = node
#             stack << node.right
#         end
#     end
#     ancestors = {}
    
#     while p
#         ancestors[p] = true
#         p = parent[p]
#     end
    
#     while !ancestors[q]
#         q = parent[q]
#     end
    
#     q
    @ans = nil
    traverse(root, p, q)
    @ans
end

def traverse(node, p, q)
    return false if !node
    
    left = traverse(node.left, p, q)
    right = traverse(node.right, p, q)
    
    mid = (node == p || node == q)
    
    if (mid && left) || (mid && right) || (right && left)
        @ans = node
    end
    
    mid || left || right
end