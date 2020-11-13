def longest_palindrome(s)
    counts = Hash.new(0)
    total = 0
    
    s.each_char { |char| counts[char] += 1 }
    
    counts.each do |k, v|
       total += v / 2 * 2
        if total.even? && v.odd?
            total += 1
        end
    end
    
    total
end