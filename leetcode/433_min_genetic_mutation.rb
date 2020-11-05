def min_mutation(start, last, bank)
    queue = [[start, start, 0]]
    
    while !queue.empty?
        n = queue.shift
        curr = n[0]
        prev = n[1]
        steps = n[2]
        
        return steps if curr == last
        
        bank.each do |str|
            if viable(curr, str) && str != prev
                queue << [str, curr, steps + 1]
            end
        end
    end
    -1
end

def viable(cur_mut, next_mut)
    count = 0
    (0...cur_mut.length).each do |i|
        if cur_mut[i] != next_mut[i]
            count += 1 
        end
    end
    count == 1
end