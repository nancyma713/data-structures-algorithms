def partition_labels(s)
    alpha = "abcdefghijklmnopqrstuvwxyz"
	last = Array.new(26)

	(0...s.length).each do |i|
		last[alpha.index(s[i])] = i
	end

	j = 0
	anchor = 0
	res = []

	(0...s.length).each do |i|
		j = [j, last[alpha.index(s[i])]].max
		if i == j
			res.push(i - anchor + 1)
			anchor = i + 1
		end
	end

	res
end
