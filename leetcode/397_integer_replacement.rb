def integer_replacement(n)
    count = 0
    while n > 1
        if n.even?
            n /= 2
        else
            if (n + 1) % 4 == 0 && (n - 1) != 2
                n += 1
            else
                n -= 1
            end 
        end
        count += 1
    end
    
    count
end