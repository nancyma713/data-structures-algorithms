def subarrays_div_by_k(a, k)
    p = [0]
    a.each do |n|
        p << (p.last + n) % k
    end
    
    count = Hash.new(0)
    p.each { |n| count[n] += 1 }
    
    sum = 0
    
    count.values.each do |v|
        sum += v * (v - 1) / 2 
    end
    
    sum
end