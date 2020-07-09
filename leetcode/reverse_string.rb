def reverse_string(text)
    alpha = "abcdefghijklmnopqrstuvwxyz"
    index = -1

    i = text.length - 1
    while i > text.length / 2
        if alpha.include?(text[i].downcase)
            temp = text[i]
            while true
                index += 1
                if alpha.include?(text[index].downcase)
                    text[i] = text[index]
                    text[index] = temp
                    break
                end
            end
        end
        i -= 1
    end
    text
end


p reverse_string("abc$de") #=> "edc$ba"
p reverse_string("a,bc$de") #=> "e,dc$ba"
p reverse_string("a,bc$def!") #=> "f,ed$cba!"