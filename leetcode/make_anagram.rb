def make_anagram(a, b)
    hash = Hash.new(0)

    a.each_char { |char| hash[char] += 1 }
    b.each_char { |char| hash[char] -= 1 }

    count = 0
    hash.each { |k, v| count += v.abs if v != 0 }
    count
end

p make_anagram("cde", "abc") #=> 4
p make_anagram("fcrxzwscanmligyxyvym", "jxwtrhvujlmrpdoqbisbwhmgpmeoke") #=> 30
p make_anagram("cdefg", "abcfh") #=> 6