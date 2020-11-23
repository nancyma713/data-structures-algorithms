def self_dividing_numbers(left, right)
    res = []
    
    (left..right).each do |num|
        res << num if is_self_dividing?(num)
    end
    
    res
end

def is_self_dividing?(num)
    n = num
    while n > 0
        digit = n % 10
        return false if digit == 0
        if num % digit != 0
            return false
        end
        n /= 10
    end
    
    true
end