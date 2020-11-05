def character_replacement(s, k)
    letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    len = s.length
    count = Array.new(26, 0)
    
    start = 0
    max_count = 0
    max_length = 0
    
    (0...len).each do |i|
       max_count = [max_count, count[letters.index(s[i])] += 1].max
        while (i - start + 1 - max_count) > k
            count[letters.index(s[start])] -= 1
            start += 1
        end

        max_length = [max_length, i - start + 1].max
    end
    
    max_length
end