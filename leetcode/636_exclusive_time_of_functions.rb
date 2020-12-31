def exclusive_time(n, logs)
    stack = []
    res = Array.new(n, 0)
    
    s = logs[0].split(":")
    stack.push(s[0].to_i)
    i = 1
    prev = s[2].to_i

    while i < logs.length
        s = logs[i].split(":")
        if s[1] == "start"
            if !stack.empty?
                res[stack.last] += s[2].to_i - prev
            end
            stack.push(s[0].to_i)
            prev = s[2].to_i
        else
            res[stack.last] += s[2].to_i - prev + 1
            stack.pop
            prev = s[2].to_i + 1
        end
        i += 1
    end
    
    res
end