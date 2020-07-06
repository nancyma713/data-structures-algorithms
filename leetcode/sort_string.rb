def sort_string(s)
    res = []
    letters = s.chars.sort
    forward = true
    
    while letters.any?
        chars = forward ? letters.uniq : letters.uniq.reverse
        res += chars
        
        chars.each { |char| letters.delete_at(letters.index(char)) }
        forward = !forward
    end
    
    res.join("")
end

p sort_string("aaaabbbbcccc") #=> "abccbaabccba"
p sort_string("rat") #=> "art"
p sort_string("leetcode") #=> "cdelotee"
p sort_string("gggggg") #=> "gggggg"