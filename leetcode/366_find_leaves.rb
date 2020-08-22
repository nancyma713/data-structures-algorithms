def find_leaves(root)
    leaves = []
    
    dfs(root, leaves)
    
    leaves
end

def dfs(node, leaves)
    return -1 if !node 

    i = [dfs(node.left, leaves), dfs(node.right, leaves)].max + 1
    
    if leaves.length < i + 1
        leaves << []
    end
    leaves[i] << node.val
    
    i
end