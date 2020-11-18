def find_restaurant(list1, list2)
    map = {}
    
    list1.each_with_index do |r, i|
        map[r] = i
    end
    
    map.each do |k, v|
       if list2.include?(k)
           map[k] += list2.index(k)
       else
           map.delete(k)
       end
    end
    
    min = map.values.min
    res = []
    
    map.each { |k, v| res << k if v == min }
    res
end