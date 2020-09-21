def all_paths_source_target(graph)
    target = graph.length - 1
    res = []
    
    backtrack(graph, target, res, 0, [0])
    
    res
end

def backtrack(graph, target, res, curr, path)
    if curr == target
        res << path.dup
        return
    end
    
    graph[curr].each do |node|
        path << node
        backtrack(graph, target, res, node, path)
        path.pop
    end
end