def generate_abbreviations(word)
    res = []
    backtrack(res, "", word, 0, 0)
    res
end

def backtrack(res, string, word, i, k)
    length = string.length
    
    if i == word.length
       if k != 0 
           string += k.to_s
       end
        res << string
    else
        backtrack(res, string, word, i + 1, k + 1)
        
        if k != 0
            string += k.to_s
        end
        string += word[i]
        backtrack(res, string, word, i + 1, 0)
    end
    string = ""
end