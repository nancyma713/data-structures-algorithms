def min_cost_climbing_stairs(cost)
    cost.length.times do |i|
        next if i < 2
        cost[i] += [cost[i - 1], cost[i - 2]].min
    end
    
    [cost[-1], cost[-2]].min
end

p min_cost_climbing_stairs([0,0,0,0]) #=> 0
p min_cost_climbing_stairs([10, 15, 20]) #=> 15
p min_cost_climbing_stairs([1, 100, 1, 1, 1, 100, 1, 1, 100, 1]) #=> 6