def reorganize_string(s)
    hash = Hash.new(0)
    s.each_char { |char| hash[char] += 1 }
    
    hash.values.each do |v|
       return "" if v > (s.length + 1) / 2 
    end
    
    sorted = hash.sort_by { |k, v| -v }.to_h.keys
    ans = []
    idx = 0
    
    (0...sorted.length).each do |i|
       times = hash[sorted[i]]
        (0...times).each do |j|
           idx = 1 if idx >= s.length
            ans[idx] = sorted[i]
            idx += 2
        end
    end
    
    ans.join("")
end