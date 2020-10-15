def maximum_swap(num)
    digs = num.to_s.split("").map(&:to_i)
    indices = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    if (0...digs.length - 1).all? { |i| digs[i] >= digs[i + 1] }
        return num
    end

    last = Array.new(10, 0)
    
    (0...digs.length).each do |i|
        last[indices.index(digs[i])] = i
    end
    
    (0...digs.length).each do |i|
        d = 9
        while d > indices.index(digs[i])
            if last[d] > i
                digs[i], digs[last[d]] = digs[last[d]], digs[i]
                return digs.join("").to_i
            end
            d -= 1
        end
    end
end