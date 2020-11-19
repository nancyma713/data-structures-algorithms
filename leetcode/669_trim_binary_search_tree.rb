def trim_bst(root, low, high)
    return root if !root
    
    if root.val > high
        return trim_bst(root.left, low, high)
    elsif root.val < low
        return trim_bst(root.right, low, high)
    end
    
    root.left = trim_bst(root.left, low, high)
    root.right = trim_bst(root.right, low, high)
    root
end