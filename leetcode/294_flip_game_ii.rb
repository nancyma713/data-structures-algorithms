def can_win(s)
    return false if !s || s.length < 2
    
    (0...s.length - 1).each do |i|
       if s[i..i + 1] == "++"
           t = s[0...i] + '--' + s[i + 2..-1]
           
           if !can_win(t)
               return true
           end
       end
    end
    
    false
end