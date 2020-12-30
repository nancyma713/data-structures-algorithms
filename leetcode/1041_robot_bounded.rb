def is_robot_bounded(instructions)
    dirs = [[0, 1], [1, 0], [0, -1], [-1, 0]]
    
    x = 0
    y = 0
    i = 0
    
    instructions.each_char do |char|
       if char == "L"
           i = (i + 3) % 4
       elsif char == "R"
           i = (i + 1) % 4
       else
           x += dirs[i][0]
           y += dirs[i][1]
       end
    end
    
    (x == 0 && y == 0 ) || i != 0
end