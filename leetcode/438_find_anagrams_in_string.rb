def find_anagrams(s, p)
#     return [0] if s == p
#     p = p.split("").sort.join("")
#     res = []
    
#     i = 0
#     while i + p.length <= s.length
#         substr = s[i...i + p.length]
#         if substr.split("").sort.join("") == p
#             res << i
#         end
#         i += 1
#     end
    
#     res
    alpha = 'abcdefghijklmnopqrstuvwxyz'
    return [] if s.length < p.length
    
    p_count = Array.new(26, 0)
    s_count = Array.new(26, 0)
    
    p.each_char do |char|
        p_count[alpha.index(char)] += 1
    end
    
    output = []
    
    (0...s.length).each do |i|
        s_count[alpha.index(s[i])] += 1
        if i >= p.length
            s_count[alpha.index(s[i - p.length])] -= 1
        end
        
        if p_count == s_count
            output << i - p.length + 1
        end
    end
    
    output
end