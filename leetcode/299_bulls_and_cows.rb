def get_hint(secret, guess)
    bulls = 0
    cows = 0
    
    hash = Hash.new(0)
    
    (0...secret.length).each do |i|
        s = secret[i]
        g = guess[i]
        
        if s == g
            bulls += 1
        else
            cows += 1 if hash[s] < 0    # more s chars in guess than secret
            cows += 1 if hash[g] > 0    # more g chars in secret than guess
            hash[s] += 1
            hash[g] -= 1
        end
    end
    
    bulls.to_s + "A" + cows.to_s + "B"
end