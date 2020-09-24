def accounts_merge(accounts)
    map = {}
    graph = {}
    
    accounts.each do |account|
        name = account[0]

        account[1..-1].each do |email|
            if graph[account[1]] == nil
                graph[account[1]] = []
            end
            
            if graph[email] == nil
                graph[email] = []
            end
            graph[account[1]] << email
            graph[email] << account[1]
            map[email] = name
        end
    end

    visited = Set.new()
    res = []
    
    graph.each do |email, vals|
        if !visited.include?(email)
            visited.add(email)
            stack = [email]
            component = []
            while !stack.empty?
                node = stack.pop
                component << node

                graph[node].each do |n|
                    if !visited.include?(n)
                        visited.add(n)
                        stack << n
                    end
                end
            end
            res << [map[email]] + component.sort
        end
    end
    res
end