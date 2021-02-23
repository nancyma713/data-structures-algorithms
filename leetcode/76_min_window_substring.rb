def min_window(s, t)
    min = ""
    
    return min if s.empty? || t.empty? || s.length == 0 || t.length == 0
    
    t_vals = Hash.new(0)
    t.each_char { |char| t_vals[char] += 1 }
    required = t_vals.length
    
    left = 0
    right = 0
    formed = 0
    window_counts = Hash.new(0)
    res = [1.0 / 0, 0, 0]
    
    while right < s.length
        char = s[right]
        window_counts[char] += 1
        if t_vals.include?(char) && (window_counts[char] == t_vals[char])
            formed += 1
        end
        
        while left <= right && formed == required
            char = s[left]
            if right - left + 1 < res[0]
                res = [right - left + 1, left, right]
            end
            
            window_counts[char] -= 1
            if t_vals[char] && (window_counts[char] < t_vals[char])
                formed -= 1
            end
            left += 1
        end
        right += 1
    end
    return res[0] == 1.0 / 0 ? "" : s[res[1]..res[2]]
end