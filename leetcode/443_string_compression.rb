def compress(chars)
    return 1 if chars.length == 1
    a = 0
    i = 0
    
    chars.each_with_index do |char, j|
        if (j + 1 == chars.length) || chars[j + 1] != char
            chars[i] = chars[a]
            i += 1
            if j > a
                (j - a + 1).to_s.split("").each do |digit|
                    chars[i] = digit
                    i += 1
                end
            end
            a = j + 1
        end
    end
    
    i
end