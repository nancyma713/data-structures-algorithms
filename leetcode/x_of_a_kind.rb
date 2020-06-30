def has_groups_size_x(deck)
    return false if deck.length < 2
    
    hash = Hash.new(0)
    
    deck.each do |card|
        hash[card] += 1
    end
    
    gcf = find_gcf(hash.values)
    
    gcf > 1
end

def find_gcf(values)
    min = values.min
    gcf = 1
    
    (2..min).each do |num|
        if (values.all? { |val| val % num == 0 })
            gcf = num
        end
    end
    
    gcf
end

p has_groups_size_x([1,2,3,4,4,3,2,1]) #=> true
p has_groups_size_x([1,1,1,2,2,2,3,3]) #=> false
p has_groups_size_x([1]) #=> false
p has_groups_size_x([1,1]) #=> true
p has_groups_size_x([1,1,2,2,2,2]) #=> true