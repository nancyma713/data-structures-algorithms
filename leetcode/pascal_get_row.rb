def get_row(row_index)
    pascal = []
    
    (0..row_index).each do |row|
        pascal[row] = []
        pascal[row][0] = pascal[row][row] = 1
        (1...row).each do |num|
            pascal[row][num] = pascal[row - 1][num - 1] + pascal[row - 1][num]
        end
    end
    pascal[row_index]
end

p get_row(3) #=> [1,3,3,1]
p get_row(5) #=> [1,5,10,10,5,1]
p get_row(2) #=> [1,2,1]