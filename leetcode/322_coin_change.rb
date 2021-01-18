def coin_change(coins, amount)
    dp = Array.new(amount + 1, amount + 1)
    dp[0] = 0
    
    (1..amount).each do |i|
        (0...coins.length).each do |j|
            if coins[j] <= i
                dp[i] = [dp[i], dp[i - coins[j]] + 1].min 
            end
        end
    end
    
    dp[amount] > amount ? -1 : dp[amount]
end