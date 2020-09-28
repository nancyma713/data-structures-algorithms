class SnakeGame

=begin
    Initialize your data structure here.
        @param width - screen width
        @param height - screen height 
        @param food - A list of food positions
        E.g food = [[1,1], [1,0]] means the first food is positioned at [1,1], the second is at [1,0].
    :type width: Integer
    :type height: Integer
    :type food: Integer[][]
=end
    def initialize(width, height, food)
        @width = width
        @height = height
        @food = food
        
        @cur_row = 0
        @cur_col = 0
        @cur_food_i = 0
        
        @snake = [[0, 0]]
    end


=begin
    Moves the snake.
        @param direction - 'U' = Up, 'L' = Left, 'R' = Right, 'D' = Down 
        @return The game's score after the move. Return -1 if game over. 
        Game over when snake crosses the screen boundary or bites its body.
    :type direction: String
    :rtype: Integer
=end
    def move(direction)
        next_cell(direction)
        
        if @cur_row < 0 || @cur_row >= @height || @cur_col < 0 || @cur_col >= @width
            return -1
        end
        
        check_food
        
        if @snake.include?([@cur_row, @cur_col])
            return -1
        end
        
        @snake.push([@cur_row, @cur_col])
        @snake.length - 1
    end
    
    def check_food
        if @food[@cur_food_i] == [@cur_row, @cur_col]
            @cur_food_i += 1
        else
            @snake.shift
        end
    end

    def next_cell(direction)
        @cur_row -= 1 if direction == "U"
        @cur_row += 1 if direction == "D"
        @cur_col -= 1 if direction == "L"
        @cur_col += 1 if direction == "R"
    end

end