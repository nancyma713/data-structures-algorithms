def spiral_order(matrix)
    res = []
    return res if matrix.length == 0
    
    seen = Array.new(matrix.length) { Array.new(matrix[0].length) }
    dr = [0, 1, 0, -1]
    dc = [1, 0, -1, 0]
    r = 0
    c = 0
    di = 0
    
    (0...(matrix.length * matrix[0].length)).each do |i|
        res << matrix[r][c]
        seen[r][c] = true
        cr = r + dr[di]
        cc = c + dc[di]
        if cr >= 0 && cr < matrix.length && cc >= 0 && cc < matrix[0].length && !seen[cr][cc]
            r = cr
            c = cc
        else
            di = (di + 1) % 4
            r += dr[di]
            c += dc[di]
        end
    end
    
    res
end

# Space optimal solution

# def spiral_order(matrix)
#     res = []
#     return res if matrix.length == 0
    
#     r1 = 0
#     r2 = matrix.length - 1
#     c1 = 0
#     c2 = matrix[0].length - 1
    
#     while r1 <= r2 && c1 <= c2
#         (c1..c2).each do |c|
#             res << matrix[r1][c] 
#         end
#         (r1 + 1..r2).each do |r|
#             res << matrix[r][c2]
#         end
        
#         if r1 < r2 && c1 < c2
#             c = c2 - 1
#             while c > c1
#                 res << matrix[r2][c]
#                 c -= 1 
#             end
#             r = r2
#             while r > r1
#                 res << matrix[r][c1]
#                 r -= 1
#             end
#         end
#         r1 += 1
#         r2 -= 1
#         c1 += 1
#         c2 -= 1
#     end
    
#     res
# end