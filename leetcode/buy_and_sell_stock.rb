def max_profit(prices)
    min_price = prices[0]
    max_profit = 0
    
    prices.each do |price|
        if price < min_price
            min_price = price
        elsif price - min_price > max_profit
            max_profit = price - min_price
        end
    end
    max_profit
end

p max_profit([7,1,5,3,6,4]) #=> 5
p max_profit([7,6,4,3,1]) #=> 0