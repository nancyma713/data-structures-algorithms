def find_all_concatenated_words_in_a_dict(words)
    @set = Set.new(words)
    res = []
    
    words.each do |word|
        @set.delete(word)
        res << word if is_concat(word)
        @set.add(word)
    end
    res
end

def is_concat(word)
    return true if @set.include?(word)
    
    (0...word.length).each do |i|
        prefix = word[0..i]
        if @set.include?(prefix)
            suffix = word[i + 1..-1]
            res = is_concat(suffix)
            if res
                @set.add(word)
                return true
            end
        end
    end
    return false
end