def generate_matrix(n)
    mat = Array.new(n) { Array.new(n) }
    r = 0
    c = 0
    dr = [0, 1, 0, -1]
    dc = [1, 0, -1, 0]
    di = 0
    
    (1..n * n).each do |i|
        mat[r][c] = i
        cr = r + dr[di]
        cc = c + dc[di]
        
        if cr >= 0 && cr < n && cc >= 0 && cc < n && mat[cr][cc] == nil
            r = cr
            c = cc
        else
            di = (di + 1) % 4
            r += dr[di]
            c += dc[di]
        end

    end
    
    mat
end