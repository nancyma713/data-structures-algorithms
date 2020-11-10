def binary_tree_paths(root)
    paths = []
    construct(root, "", paths)
    paths
end

def construct(root, path, paths)
    if root
        path += root.val.to_s
        if !root.left && !root.right
            paths << path
        else
            path += '->'
            construct(root.left, path, paths)
            construct(root.right, path, paths)
        end
    end
end