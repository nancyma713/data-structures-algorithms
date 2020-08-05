def find_subarr(arr, n)
	i = 0
	j = 0
	sum = 0
	while i < arr.length
		sum += arr[j]
		if sum == n
			return [i, j]
		elsif sum < n
			j += 1
		else
			i += 1
            j = i
            sum = 0
		end
	end
	-1
end

p find_subarr([1, 4, 5, 7, 11], 10) #=> [0, 2]
p find_subarr([4, 3, 5, 9, 2], 11) #=> [3, 4]