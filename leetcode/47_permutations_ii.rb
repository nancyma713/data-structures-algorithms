def permute_unique(nums)
    res = []
    map = Hash.new(0)
    nums.each { |num| map[num] += 1 }
    
    dfs([], nums.length, map, res)
    
    res
end

def dfs(comb, n, map, res)
    if comb.length == n
        res << comb.dup
        return
    end
    
    map.each do |k, v|
        if v > 0
            comb << k
            map[k] -= 1
            dfs(comb, n, map, res)
            comb.pop
            map[k] = v
        end
    end
end