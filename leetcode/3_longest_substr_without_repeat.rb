def length_of_longest_substring(s)
    longest = 0
    start = 0
    last = 0
    seen = Set.new()
    
    while start < s.length && last < s.length
        if !seen.include?(s[last])
            seen.add(s[last])
            last += 1
            longest = [ longest, last - start ].max
        else
            seen.delete(s[start])
            start += 1
        end
    end
    
    longest
end