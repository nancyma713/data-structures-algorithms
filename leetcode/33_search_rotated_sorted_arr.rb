def search(nums, target)
    left = 0
    right = nums.length - 1
    
    while left <= right
        mid = (left + right) / 2
        if nums[mid] == target
            return mid
        elsif nums[mid] >= nums[left]
            if target >= nums[left] && target < nums[mid]
               right = mid - 1
            else
                left = mid + 1
            end
        else
            if target <= nums[right] && target > nums[mid]
                left = mid + 1
            else
                right = mid - 1
            end
        end
    end
    -1
end