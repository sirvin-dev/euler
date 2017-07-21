File.open("13.txt") do |file|
	sum = 0
	file.each_line do |l|
		sum += l.to_i
	end
	puts sum.to_s[0..9]
end