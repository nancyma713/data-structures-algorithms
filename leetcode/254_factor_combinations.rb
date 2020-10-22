def get_factors(n)
    res = []
    dfs(n, res, 2, [])
    res
end

def dfs(n, res, start, curr)
    if n <= 1
        if curr.length > 1
            res << curr.dup
        end
        return
    end
    
    (start..n).each do |i|
        if n % i == 0
            curr << i
            dfs(n / i, res, i, curr)
            curr.pop
        end
    end
end