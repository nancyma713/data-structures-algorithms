def run(museum)
	ans = Array.new(museum.length) { Array.new(museum[0].length) }
	queue = [] 

	museum.each_with_index do |row, i|
		row.each_with_index do |col, j|
			if museum[i][j] == 'G'
				queue << [i, j, 0]
			end
		end
    end

	while !queue.empty?
		room = queue.shift
		i = room[0]
        j = room[1]
        steps = room[2]
		
		if i < 0 || i >= museum.length || j < 0 || j >= museum[0].length
			next
		end

		if !ans[i][j].nil? && steps >= ans[i][j]
			next
		end

		queue << [i + 1, j, steps + 1]
        queue << [i - 1, j, steps + 1]
        queue << [i, j + 1, steps + 1]
        queue << [i, j - 1, steps + 1]

        ans[i][j] = steps
	end

	ans
end


# p run([['R', 'G', 'R'], ['G', 'R', 'R'], ['R', 'R', 'R']])
# p run([ ['G', 'R', 'R', 'G', 'R'], ['R', 'R', 'R', 'R', 'R'], ['R', 'G', 'R', 'R', 'R'], ['R', 'R', 'R', 'G', 'R'], ['R', 'R', 'R', 'R', 'R'], ['R', 'R', 'R', 'G', 'R'] ])
p run([ ['R', 'R', 'R', 'G', 'R'], ['R', 'R', 'R', 'R', 'R'], ['R', 'R', 'R', 'R', 'R'], ['R', 'G', 'R', 'G', 'R'], ['R', 'G', 'R', 'R', 'R'], ['R', 'R', 'R', 'R', 'R'] ])
#  => 
# [
#   [ 3, 2, 1, 0, 1 ],
#   [ 3, 2, 2, 1, 2 ],
#   [ 2, 1, 2, 1, 2 ],
#   [ 1, 0, 1, 0, 1 ],
#   [ 1, 0, 1, 1, 2 ],
#   [ 2, 1, 2, 2, 3 ]
# ]