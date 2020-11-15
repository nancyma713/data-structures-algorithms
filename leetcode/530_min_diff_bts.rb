def get_minimum_difference(root)
    @min = 1.0 / 0
    @prev = nil
    
    dfs(root)
    
    @min
end

def dfs(root)
    return if !root
    
    dfs(root.left)
    if @prev
        @min = [@min, (root.val - @prev.val).abs].min
    end
    
    @prev = root
    dfs(root.right)
end