def length_of_lis(nums)
    dp = Array.new(nums.length)
    len = 0
    
    nums.each do |num|
        i = bsearch(dp, 0, len, num)
        i = -(i + 1) if i < 0
        dp[i] = num
        len += 1 if i == len
    end
    len
end

def bsearch(dp, i, j, num)
    left = i
    right = j
    
    while left < right
        mid = (left + right) / 2
        if dp[mid] == num
            return mid
        elsif dp[mid] > num
            right = mid
        else
            left = mid + 1
        end
    end
    -left - 1
end