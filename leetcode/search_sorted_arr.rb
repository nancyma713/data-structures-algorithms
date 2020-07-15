def search(nums, target)
    l = 0
    r = nums.length - 1
    
    while l <= r
        mid = l + (r - l) / 2
        
        if nums[mid] == target
            return true
        end
        while l < mid && nums[l] == nums[mid]
            l += 1
        end
        if nums[l] <= nums[mid]
            if nums[l] <= target && target < nums[mid]
                r = mid - 1
            else
                l = mid + 1
            end
        else
            if nums[mid] < target && target <= nums[r]
                l = mid + 1
            else
                r = mid - 1
            end
        end 
    end
    
    false
end

p search([2,5,6,0,0,1,2], 0) #=> true
p search([2,5,6,0,0,1,2], 3) #=> false
p search([1], 1) #=> true