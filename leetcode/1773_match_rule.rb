def count_matches(items, rule_key, rule_value)
    matches = 0
    if rule_key == "type"
        index = 0
    elsif rule_key == "color"
        index = 1
    else
        index = 2
    end
    
    items.each do |item|
       if item[index] == rule_value
           matches += 1
       end
    end
    
    matches
end