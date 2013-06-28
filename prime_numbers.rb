input = ARGV[0]




1.upto(input).each do |num| 
	ref = num
	if ref == 1
		break
	end
	if num / ref-1 == 0
		ref -= 1
	else
		puts num
	end
end
