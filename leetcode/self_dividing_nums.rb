def self_dividing_numbers(left, right)
    output = []
    
    (left..right).each do |num|
       output << num if is_self_dividing?(num) 
    end
    
    output
end

def is_self_dividing?(num)
    string = num.to_s
    
    string.each_char do |char|
       return false if char == "0"
        if (num % char.to_i) != 0
            return false
        end
    end
    
    true
end

p self_dividing_numbers(1, 22) #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22]
p self_dividing_numbers(1, 2) #=> [1, 2]
p self_dividing_numbers(1, 35) #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22, 24, 33]