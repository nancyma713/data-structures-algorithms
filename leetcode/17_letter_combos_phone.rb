def letter_combinations(digits)
    res = []
    
    combinations(digits, "", 0, res) unless digits.empty?
    
    res
end

def combinations(digits, curr_str, index, res)
    map = { 
        '2' => 'abc',
        '3' => 'def',
        '4' => 'ghi',
        '5' => 'jkl',
        '6' => 'mno',
        '7' => 'pqrs',
        '8' => 'tuv',
        '9' => 'wxyz'
    }
    
    if curr_str.length == digits.length
        res << curr_str
        return
    end
    
    map[digits[index]].each_char do |c|
        combinations(digits, curr_str + c, index + 1, res) 
    end
end