def minimum_total(triangle)
    return 0 if triangle.length == 0
    
    (1...triangle.length).each do |r|
        prev = r - 1
        (0...triangle[r].length).each do |ele|
            temp = []
            if ele < triangle[prev].length
                temp.push(triangle[prev][ele])
            end
            if ele >= 1
                temp.push(triangle[prev][ele - 1])
            end
            triangle[r][ele] += temp.min
        end
    end
    triangle.last.min
end

def minimum_total(triangle)
    dp = Array.new(triangle.length + 1, 0)
    
    i = triangle.length - 1
    
    while i >= 0
        j = 0
        while j < triangle[i].length
            dp[j] = [dp[j], dp[j + 1]].min + triangle[i][j]
            j += 1
        end
        i -= 1
    end
    
    dp[0]
end