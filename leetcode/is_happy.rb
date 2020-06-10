def is_happy(n)
    hash = Hash.new(0)
    
    while n != 1
        n = calculate(n)
        return false if hash.has_key?(n)
        hash[n] += 1
    end
    true
end

def calculate(n)
    total = 0
    while n != 0
        total += (n % 10) ** 2
        n /= 10
    end
    
    total
end

p is_happy(19) #=> true
p is_happy(100) #=> true
p is_happy(66) #=> false