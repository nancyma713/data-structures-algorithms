def reverse_vowels(s)
    vowels = 'aeiouAEIOU'
    saved_vowels = []
    
    s.each_char do |char|
       saved_vowels << char if vowels.include?(char) 
    end
    
    s.each_char.with_index do |char, idx|
        if vowels.include?(char)
            s[idx] = saved_vowels.pop
        end
    end
    s
end

p reverse_vowels("hello") #=> "holle"
p reverse_vowels("leetcode") #=> "leotcede"
p reverse_vowels("dog") #=> "dog"