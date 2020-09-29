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