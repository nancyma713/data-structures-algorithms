def array_rank_transform(arr)
    sort = arr.uniq.sort
    hash = Hash.new(0)
    
    sort.each_with_index do |num, idx|
        hash[num] = idx + 1
    end
    
    arr.map { |num| hash[num] }
end

p array_rank_transform([3, 4, 7, 13, 5]) # => [1, 2, 4, 5, 3]
p array_rank_transform([40, 10, 20, 30]) # => [4, 1, 2, 3]
p array_rank_transform([100, 100, 100]) # => [1, 1, 1]
p array_rank_transform([37,12,28,9,100,56,80,5,12]) # => [5,3,4,2,8,6,7,1,3]