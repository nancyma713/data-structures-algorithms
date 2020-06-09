def max_profit(prices)
    max = 0
    
    i = 1
    while i < prices.length
        if prices[i] > prices[i - 1]
            max += prices[i] - prices[i - 1]
        end
        i += 1
    end
    
    max
end

p max_profit([7,1,5,3,6,4]) #=> 7
p max_profit([1,2,3,4,5]) #=> 4
p max_profit([7,6,5,4,3,2]) #=> 0