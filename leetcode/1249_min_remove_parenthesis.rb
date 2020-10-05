def min_remove_to_make_valid(s)
    remove = Set.new()
    stack = []
    (0...s.length).each do |i|
        if s[i] == "("
           stack.push(i)
        end
        if s[i] == ")"
            if stack.empty?
                remove.add(i)
            else
                stack.pop
            end
        end 
    end
    
    while !stack.empty?
        remove.add(stack.pop)
    end
    str = ""
    (0...s.length).each do |i|
        if !remove.include?(i)
            str += s[i]
        end
    end
    str
end