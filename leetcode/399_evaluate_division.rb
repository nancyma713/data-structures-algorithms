def calc_equation(equations, values, queries)
    res = []
    neighbors = Hash.new() { |h, k| h[k] = [] }
    
    equations.each_with_index do |eq, i|
        neighbors[eq.first] << [eq.last, values[i]]
        neighbors[eq.last] << [eq.first, 1 / values[i]]
    end

    queries.each do |q|
       res << eval(q, neighbors)
    end
    
    res
end

def eval(query, neighbors)
    return -1.0 if neighbors[query.first].empty? || neighbors[query.last].empty?
    return 1.0 if query.first == query.last
    
    q = neighbors[query.first].dup
    visited = []

    while !q.empty?
        node = q.shift

        if node.first == query.last
            return node.last
        end
        visited.push(node.first)
        
        neighs = neighbors[node.first]
        neighs.each do |n|
            to_check = n
            next if visited.include?(n.first)
            q << [n.first, n.last * node.last]
        end
    end
    -1.0
end