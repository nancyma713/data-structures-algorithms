def shortest_palindrome(s)
    n = s.length
    i = 0
    j = n - 1
    while j >= 0
       if s[i] == s[j]
           i += 1
       end
        j -= 1
    end
    
    if i == n
        return s
    end
    remaining = s[i...n]
    remaining.reverse + shortest_palindrome(s[0...i]) + s[i..-1]
end