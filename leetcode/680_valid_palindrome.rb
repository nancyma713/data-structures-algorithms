def valid_palindrome(s)
    left = 0
    right = s.length - 1
    
    while left < right
        if s[left] == s[right]
            left += 1
            right -= 1
        else
            sub1 = s[0...left] + s[left + 1..-1]
            sub2 = s[0...right] + s[right + 1..-1]
            return sub1 == sub1.reverse || sub2 == sub2.reverse
        end
    end
    true
end