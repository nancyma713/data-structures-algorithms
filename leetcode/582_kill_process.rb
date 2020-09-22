def kill_process(pid, ppid, kill)
    map = Hash.new { |h, k| h[k] = [] }
    killed = []
    
    (0...pid.length).each do |i|
        map[ppid[i]] << pid[i]
    end
    
    queue = [kill]
    
    while !queue.empty?
        p = queue.pop
        killed << p
        
        if map[p] && map[p].length > 0
            map[p].each { |ele| queue << ele }
        end
    end
    
    killed
end