def decode_string(s)
    stack = []
    nums = "1234567890"
    
    s.each_char do |char|
        if char != "]"
           stack.push(char)
           next
        end
        
        cur = stack.pop
        str = ""
        
        while cur != "["
            str = cur + str
            cur = stack.pop
        end

        cur = stack.pop
        num = ''

        while cur && nums.include?(cur)
            num = cur + num
            cur = stack.pop
        end
        stack.push(cur)
        stack.push(str * num.to_i)
    end

    stack.join("")
end

p decode_string("3[a2[c]]") #=> "accaccacc"
p decode_string("2[abc]3[cd]ef") #=> "abcabccdcdcdef"
p decode_string("100[leetcode]") #=> "leetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcodeleetcode"