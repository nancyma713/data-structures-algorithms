def is_valid_bst(root)
    check(root, nil, nil)
end

def check(node, lower, upper)
    return true if !node
    
    val = node.val
    if lower && (val <= lower)
        return false
    end
    
    if upper && (val >= upper)
        return false
    end
    
    if !check(node.right, val, upper)
        return false
    end
    
    if !check(node.left, lower, val)
        return false
    end
    
    true
end