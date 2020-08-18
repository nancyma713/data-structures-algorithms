def ladder_length(begin_word, end_word, word_list)
    return 0 if !begin_word || !end_word || !word_list.include?(end_word)
    
    length = begin_word.length
    
    dict = Hash.new() { |h, k| h[k] = [] }
    visited = { begin_word => true }
    
    word_list.each do |word|
        (0...length).each do |i|
            dict[word[0...i] + "*" + word[i + 1..-1]] << word
        end
    end
    
    queue = [[begin_word, 1]]
    
    while !queue.empty?
        curr = queue.shift
        s = curr.first
        l = curr.last
        
        (0...length).each do |i|
            sub_word = s[0...i] + "*" + s[i + 1..-1] 

            dict[sub_word].each do |word|
                if word == end_word
                   return l + 1
                end
                if !visited[word]
                    visited[word] = true
                    queue << [word, l + 1]
                end
            end
            dict[sub_word] = []
        end
    end
    
    0
end

p ladder_length("hit", "cog", ["hot","dot","dog","lot","log","cog"]) #=> 5