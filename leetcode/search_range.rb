def search_range(nums, target)
    return [-1, -1] if nums.length == 0
    
    i = 0
    j = nums.length - 1
    
    while i < j
        mid = i + (j - i) / 2
        if nums[mid] > target
            j = mid
        elsif nums[mid] < target
            i = mid + 1
        elsif nums[mid] == target
            a = mid
            b = mid
            until nums[a] != target || a == nums.length
                a += 1
            end
            until nums[b] != target || b == -1
                b -= 1
            end
            
            return [b + 1, a - 1]
        end
    end
    
    if i == j && nums[i] != target
        return [-1, -1]
    elsif i == j && nums[i] == target
        return [i, j]
    end
end

p search_range([5,7,7,8,8,10], 8) #=> [3, 4]
p search_range([5,7,7,8,8,10], 6) #=> [-1, -1]