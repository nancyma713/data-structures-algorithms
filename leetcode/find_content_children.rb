def find_content_children(g, s)
    count = 0
    
    g = g.sort
    s = s.sort
    
    i = 0
    j = 0
    
    while i < g.length && j < s.length
       if g[i] <= s[j]
           count += 1
           i += 1
           j += 1
       elsif g[i] > s[j]
           j += 1
       end
    end
    
    count
end

p find_content_children([1,2,3], [1,1]) #=> 1
p find_content_children([1,1,1], [1,1]) #=> 2
p find_content_children([1,2], [1,2,3]) #=> 2
p find_content_children([10,9,8,7,6], [5,6,7,8,9]) #=> 4