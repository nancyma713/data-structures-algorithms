def min_insertions(s)
    return 0 if s.length <= 1
    
    dp = Array.new(s.length + 1) { Array.new(s.length + 1, 0) }
    
    (0...s.length).each do |i|
        (0...s.length).each do |j|
           dp[i + 1][j + 1] = s[i] == s[-1 - j] ? dp[i][j] + 1 : [dp[i][j + 1], dp[i + 1][j]].max
        end
    end
    s.length - dp[s.length][s.length]
end