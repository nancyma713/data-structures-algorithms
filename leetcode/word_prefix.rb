def is_prefix_of_word(sentence, search_word)
    words = sentence.split(" ")
    len = search_word.length
    
    words.each_with_index do |word, idx|
        return idx + 1 if (word[0...len] == search_word)
    end
    
    -1
end

p is_prefix_of_word("i love eating burger", "burg") #=> 4
p is_prefix_of_word("this problem is an easy problem", "pro") #=> 2
p is_prefix_of_word("i am tired", "you") #=> -1