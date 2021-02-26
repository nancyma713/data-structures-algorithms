def num_decodings(s)
#     dp = Array.new(s.length + 1, 0)
#     dp[0] = 1
#     dp[1] = s[0] == '0' ? 0 : 1
    
#     (2..s.length).each do |i|
#        if s[i - 1] != '0'
#           dp[i] = dp[i - 1] 
#        end
        
#         two_dig = s[i - 2...i].to_i
#         if two_dig >= 10 && two_dig <= 26
#            dp[i] += dp[i - 2] 
#         end
#     end
    
#     dp[s.length]
    
    return 0 if s[0] == '0'
    
    two_back = 1
    one_back = 1
    (1...s.length).each do |i|
        curr = 0
        if s[i] != '0'
            curr = one_back
        end
        two_dig = s[i - 1..i].to_i
        if two_dig >= 10 && two_dig <= 26
            curr += two_back
        end
        
        two_back = one_back
        one_back = curr
    end
    one_back
end