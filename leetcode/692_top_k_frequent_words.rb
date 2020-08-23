def top_k_frequent(words, k)
    hash = Hash.new(0)
    
    words.each do |word|
        hash[word] += 1
    end
    
    counts = Hash.new { |h, k| h[k] = [] }
    
    hash.each do |k, v|
       counts[v] << k 
    end
    
    sorted = counts.sort_by { |k, v| -k }.map { |arr| arr.last }
    
    sorted = sorted.map do |arr|
        arr.sort
    end
    
    sorted.flatten[0...k]
end