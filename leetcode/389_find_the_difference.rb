def find_the_difference(s, t)
    return t if s.length == 0
    map = Hash.new(0)
    s.each_char { |char| map[char] += 1 }
    
    t.each_char do |char| 
        if !map[char] || map[char] < 1
            return char
        end
        map[char] -= 1
    end
end