def cal_points(ops)
    game = []
    
    ops.each do |op|
        if op == "+"
            game << game[-1] + game[-2]
        elsif op == "D"
            game << game[-1] * 2
        elsif op == "C"
            game.pop
        else
            game << op.to_i
        end
    end
    game.sum
end

p cal_points(["5","2","C","D","+"]) #=> 30
p cal_points(["5","-2","4","C","D","9","+","+"]) #=> 27
