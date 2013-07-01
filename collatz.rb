#if n is even, n = n/2
#if n is odd, n = 3n+1

$recorded_iterations = {} 


def collatz(n, step)
	if $recorded_iterations[n]
		return n, $recorded_iterations[n] + step 
	end

	if n == 1
		step += 1
		return n, step
	elsif n % 2 == 0
		step += 1

		collatz((n/2), step)
	else
		step += 1

		collatz(((3*n)+1), step)
	end

end


input = ARGV[0].to_i
max_steps = 0
max_num = 0


1.upto(input).each do |i|
		#initialize step counter to 0 (carries the step count within the iterations of a given 'i')
	step = 0

		#total_step_count is the sum of the internal step count, plus whatever was found in the hash lookup of $recorded_iterations
	total_step_count = 0

	number, total_step_count =	collatz(i, step)
	

		# add the given 'i' to our hash of outputs to use on the next lookup
	$recorded_iterations[i] = total_step_count
	if max_steps < total_step_count 
		max_steps = total_step_count
		max_num = i
	end	



end


puts max_num.to_s + " is the number with the longest chain (" + max_steps.to_s + " total steps). "


