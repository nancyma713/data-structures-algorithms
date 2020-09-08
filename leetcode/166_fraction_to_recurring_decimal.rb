def fraction_to_decimal(numerator, denominator)
    return "0" if numerator == 0
    fraction = ""
    if (numerator < 0 || denominator < 0) && !(numerator < 0 && denominator < 0)
        fraction += "-"
    end
    
    dividend = numerator.abs
    divisor = denominator.abs
    fraction += (dividend / divisor).to_s
    remainder = dividend % divisor
    
    if remainder == 0
        return fraction
    end
    fraction += "."
    
    map = {}
    
    while remainder != 0
        if map[remainder]
            fraction = fraction[0...map[remainder]] + "(" + fraction[map[remainder]..-1]
            fraction += ")"
            break
        end
        map[remainder] = fraction.length
        remainder *= 10
        fraction += (remainder / divisor).to_s
        remainder %= divisor
    end
    
    fraction
end