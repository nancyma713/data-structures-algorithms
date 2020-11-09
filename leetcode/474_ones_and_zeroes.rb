def find_max_form(strs, m, n)
    dp = Array.new(m + 1) { Array.new(n + 1, 0) }
    
    strs.each do |str|
        count = countzeroesones(str)
        zeroes = m
        while zeroes >= count[0]
            ones = n
            while ones >= count[1]
                dp[zeroes][ones] = [1 + dp[zeroes - count[0]][ones - count[1]], dp[zeroes][ones]].max
                ones -= 1
            end
            zeroes -= 1
        end
    end
    dp[m][n]
end

def countzeroesones(str)
   c = Array.new(2, 0)
    
    str.each_char do |char|
       if char == '0'
           c[0] += 1
       else
           c[1] += 1
       end
    end
    
    c
end