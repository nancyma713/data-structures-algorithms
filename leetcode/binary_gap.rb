def binary_gap(n)
    binary = n.to_s(2)
    
    indices = []
    
    binary.each_char.with_index do |char, i|
        if char == "1"
            indices << i
        end
    end
    max = 0
    
    (0...indices.length - 1).each do |i|
        if indices[i + 1] - indices[i] > max
            max = indices[i + 1] - indices[i]
        end
    end
    
    max
end

p binary_gap(22) #=> 2
p binary_gap(5) #=> 2
p binary_gap(6) #=> 1