def remove_kdigits(num, k)
    return "0" if num.length == k
    
    stack = []
    
    num.each_char do |char|
        while k > 0 && !stack.empty? && stack.last > char 
            stack.pop
            k -= 1
        end
        stack << char
    end
    
    final = k != 0 ? stack[0...(-1 - k)] : stack
    
    final.join("").to_i.to_s
end