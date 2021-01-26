def is_ugly(num)
    return true if num == 1
    return false if num == 0
    (2..5).each do |i|
       while num % i == 0
           num /= i
       end
    end
    num == 1
end