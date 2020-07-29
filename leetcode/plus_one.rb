def plus_one(digits)
    carry = 1
    (1..digits.length).each do |i|
        digits[-i] += carry
        if digits[-i] == 10
            digits[-i] = 0
        else
            carry = 0
            break
        end
    end
    digits.unshift(1) if carry == 1
    digits
end

p plus_one([1,2,3]) #=> [1, 2, 4]
p plus_one([4,3,2,1]) #=> [4, 3, 2, 2]
p plus_one([5,3,2,9]) #=> [5, 3, 3, 0]