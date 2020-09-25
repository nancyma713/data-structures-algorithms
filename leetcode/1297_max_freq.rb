def max_freq(s, max_letters, min_size, max_size)
    count = Hash.new(0)
    size = min_size

    (0...(s.length - size + 1)).each do |i|
        word = s[i...i + size]
        if (Set.new(word.split(""))).length <= max_letters
            count[word] += 1
        end
    end

    return count.length > 0 ? count.values.max : 0
end