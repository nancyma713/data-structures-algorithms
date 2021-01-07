def get_row(row_index)
    ans = []
    
    (0..row_index).each do |i|
        ans << get_num(row_index, i) 
    end
    
    ans
end

def get_num(row, col)
   if row == 0 || col == 0 || col == row
       return 1
   end
    
    get_num(row - 1, col - 1) + get_num(row - 1, col)
end