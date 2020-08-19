def expressive_words(s, words)
    total = 0
    string = find_key(s)
    key = string.first
    count = string.last
    
    words.each do |word|
        key_and_count = find_key(word)
        k = key_and_count.first
        c = key_and_count.last
        
        next if k != key
        
        if c == count
            total += 1
            next
        end
        
        if (0...k.length).all? { |i| (count[i] >= [c[i], 3].max) || count[i] == c[i] }
            total += 1
        end
    end
    
    total
end

def find_key(s)
    str = s[0]
    count = []

    sub_count = 1
    (1...s.length).each do |i|
         if s[i] == s[i - 1]
             sub_count += 1
         else
             str += s[i]
             count << sub_count
             sub_count = 1
         end
    end
    count << sub_count
    
    [str, count]
end