def final_prices(prices)
    output = []
    
    i = 0
    while i < prices.length
        j = i + 1
        while (j < prices.length) && (prices[i] - prices[j] < 0)
            j += 1
        end
        if prices[j]
            output << (prices[i] - prices[j]) 
        else
            output << prices[i]
        end
        i += 1
    end
    output
end

p final_prices([8,4,6,2,3]) #=> [4,2,4,2,3]
p final_prices([1,2,3,4,5]) #=> [1,2,3,4,5]
p final_prices([10,1,1,6]) #=> [9,0,1,6]