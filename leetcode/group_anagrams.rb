def group_anagrams(strs)
    res = Hash.new { |h, k| h[k] = [] }
    
    strs.each do |str|
        sorted_str = str.split("").sort.join("")
        res[sorted_str] << str
    end

    res.values
end

p group_anagrams(["eat", "tea", "tan", "ate", "nat", "bat"]) #=> [ ["ate","eat","tea"], ["nat","tan"], ["bat"] ]
p group_anagrams(["read", "dear", "meat", "dare", "tear", "rate", "team"]) #=> [ ["read","dear","dare"], ["rate", "tear"], ["team", "meat"] ]