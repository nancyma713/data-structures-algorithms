def daily_temperatures(t)
    res = Array.new(t.length, 0)
    stack = []      # [0]
    
    (0...t.length).each do |i|
        while !stack.empty? && t[i] > t[stack.last]
            idx = stack.pop
            res[idx] = i - idx
        end
        stack << i
    end
    
    res
end