def longest_palindrome(s)
    return "" if !s || s.length == 0
    left = 0
    right = 0
    
    (0...s.length).each do |i|
        len1 = expand(s, i , i)
        len2 = expand(s, i, i + 1)
        len = [len1, len2].max
        if (len > right - left)
            left = i - (len - 1) / 2
            right = i + len / 2
        end
    end
    
    s[left..right]
end

def expand(s, left, right)
    l = left
    r = right
    
    while l >= 0 && r < s.length && s[l] == s[r]
        l -= 1
        r += 1
    end
    
    r - l - 1
end