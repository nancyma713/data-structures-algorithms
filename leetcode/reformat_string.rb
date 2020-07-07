def reformat(s)
    nums = "1234567890"
    letter_count = []
    num_count = []
    
    s.each_char do |ele|
        if nums.include?(ele)
            num_count << ele
        else
            letter_count << ele
        end
    end
    
    return "" if (letter_count.length - num_count.length).abs > 1
    
    new_str = ""
    
    if letter_count.length >= num_count.length
        while letter_count.length > 0
            new_str += letter_count.shift
            new_str += num_count.shift unless num_count.empty?
        end
    elsif num_count.length > letter_count.length
        while num_count.length > 0
            new_str += num_count.shift
            new_str += letter_count.shift unless num_count.empty?
        end
    end
    new_str
    
end

p reformat("a0b1c2") #=> "0a1b2c"
p reformat("leetcode") #=> ""
p reformat("1229857369") #=> ""
p reformat("covid2019") #=> "c2o0v1i9d"