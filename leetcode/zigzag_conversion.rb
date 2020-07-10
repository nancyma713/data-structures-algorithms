def convert(s, num_rows)
    res = Array.new(num_rows) { Array.new([]) }

    i = 0
    char = 0
    neg = false
    
    while char < s.length
        res[i] << s[char]
        if (i + 1) == num_rows
            neg = true
        elsif (i - 1) < 0
            neg = false
        end
        neg ? (i -= 1) : (i += 1)
        char += 1
    end

    res.flatten.join("")
end

p convert("PAYPALISHIRING", 3) #=> "PAHNAPLSIIGYIR"
p convert("PAYPALISHIRING", 4) #=> "PINALSIGYAHRPI"