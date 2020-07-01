def find_ocurrences(text, first, second)
    words = text.split(" ")
    output = []
    
    (0...words.length - 2).each do |i|
       if words[i] == first && words[i + 1] == second
           output << words[i + 2]
       end
    end
    
    output
end

p find_ocurrences("alice is a good girl she is a good student", "a", "good") #=> ["girl","student"]
p find_ocurrences("we will we will rock you", "we", "will") #=> ["we","rock"]