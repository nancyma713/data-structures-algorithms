def minimum_length_encoding(words)
    good = Set.new(words)
    
    words.each do |word|
        (1...word.length).each do |i|
            good.delete(word[i..-1])    
        end
    end
    
    ans = 0
    good.each do |word|
        ans += word.length + 1 
    end
    
    ans
end