# You are climbing a stair case. It takes n steps to reach to the top.
# Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

def climb_stairs(n, memo = [1, 1])
    return memo[n] unless memo[n].nil?
    memo[n] = climb_stairs(n - 1, memo) + climb_stairs(n - 2, memo)
end

p climb_stairs(2) #=> 2
p climb_stairs(3) #=> 3
p climb_stairs(5) #=> 8