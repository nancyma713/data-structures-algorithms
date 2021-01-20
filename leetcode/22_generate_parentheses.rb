def generate_parenthesis(n)
    res = []
    
    backtrack(n, res, 0, 0, "")
    
    res
end

def backtrack(n, res, left, right, curr)
    if curr.length == n * 2
        res << curr
        return
    end
    
    if left < n
        backtrack(n, res, left + 1, right, curr + "(") 
    end
    if right < left
        backtrack(n, res, left, right + 1, curr + ")") 
    end
end