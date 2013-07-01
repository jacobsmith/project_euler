#Question 22, reads in 'names.txt', converts it to an array, sort it, then loop through each name and take a numerical value (A=1, B=2, etc.) derived from its ASCII value and multiplies it by its position in the sorted list


names_list = File.read('names.txt')

names_array = names_list.scan(/\w+/)
names_array.sort!




total_name_score = 0
name_score = 0
letter_value = 0

0.upto(names_array.length-1) { |i|

	name = names_array[i]
	name.each_char do |letter|
		letter.each_byte do |num|

			letter_value = (num - 64)
		end
	name_score += letter_value

#line below is for debugging purposes, left in for future reference (:		
#	puts i.to_s + ' i, ' + names_array[i] + ' ' + name_score.to_s + ' name_score'
	
	
	end
	total_name_score += (name_score * (i+1))
	name_score = 0
	letter_value = 0
}

puts total_name_score

