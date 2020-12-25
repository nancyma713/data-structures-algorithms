def combination_sum2(candidates, target)
    res = []
    candidates.sort!
    dfs(candidates, target, 0, [], res)
    res
end

def dfs(candidates, target, curr, path, res)
    if target == 0
        res << path.dup
        return
    end
    
    (curr...candidates.length).each do |i|
        next if i > curr && candidates[i] == candidates[i - 1]
        path << candidates[i]
        dfs(candidates, target - candidates[i], i + 1, path, res)
        path.pop
    end
end