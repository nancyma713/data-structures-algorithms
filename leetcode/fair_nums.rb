def solution(a, b)
    count = 0

    (0...a.length - 1).each do |i|
        sum1 = a[0..i].sum
        next if a[i + 1..-1].sum != sum1
        next if b[0..i].sum != sum1
        next if b[i + 1..-1].sum != sum1

        count += 1
    end

    count
end

p solution([0,4,-1,0,3], [0,-2,5,0,3])
p solution([2,-2,3,-3], [0,0,4,-4])
p solution([1,4,2,-2,5], [7,-2,-2,2,5])
p solution([3,2,6], [4,1,6])