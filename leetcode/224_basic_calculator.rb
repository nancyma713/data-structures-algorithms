def calculate(s)
    nums = "1234567890"
    stack = []
    result = 0
    operand = 0
    sign = 1
    
    s.each_char do |char|
        next if char == " "
        if nums.include?(char)
            operand = (operand * 10) + char.to_i
        elsif char == "+"
            result += sign * operand
            sign = 1
            operand = 0
        elsif char == "-"
            result += sign * operand
            sign = -1
            operand = 0
        elsif char == "("
            stack.push(result)
            stack.push(sign)
            sign = 1
            result = 0
        elsif char == ")"
            result += sign * operand
            result *= stack.pop
            result += stack.pop
            operand = 0
        end
    end
    result + sign * operand
end