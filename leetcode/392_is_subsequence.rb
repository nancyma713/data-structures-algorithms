def is_subsequence(s, t)
    return false if s.length > t.length
    s_pointer = 0
    t_pointer = 0
    
    while t_pointer < t.length
        if s[s_pointer] == t[t_pointer]
            s_pointer += 1
            t_pointer += 1
        else
            t_pointer += 1
        end
    end
    
    s_pointer == s.length
end