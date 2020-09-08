def calculate(s)
    return 0 if s.length == 0 || !s
    s += "+"
    nums = "1234567890"
    stack = []
    num = 0
    sign = "+"
    
    s.each_char.with_index do |char, i|
         if nums.include?(char)
            num = num * 10 + char.to_i
         elsif char == " "
             next
         else
             if sign == "-"
                 stack << -num
             elsif sign == "+"
                 stack << num
             elsif sign == "*"
                 op = stack.pop
                 stack << (op * num)
             elsif sign == "/"
                 op = stack.pop
                 n = op > 0 ? (op.abs / num) : -(op.abs / num)
                 stack << n
             end
             sign = char
             num = 0
         end
    end
    stack.sum
end