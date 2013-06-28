#if n is even, n = n/2
#if n is odd, n = 3n+1

$recorded_iterations = {} 
$init = 0
$steps = 0

def collatz(n, step)
	if $recorded_iterations[n]
		return n, $recorded_iterations[n] + step 
	end

	if n == 1
		step += 1
		return n, step
	elsif n % 2 == 0
		step += 1
#		puts n
		collatz((n/2), step)
	else
		step += 1
#		puts n
		collatz(((3*n)+1), step)
	end
#	$steps += 1
end


input = ARGV[0].to_i
max_steps = 0
max_num = 0


1.upto(input).each do |i|
		#initialize step counter to 0
	step = 0
	step_count = 0
	number, step_count =	collatz(i, step)
#		puts i, step_count
#		puts '--'
		$recorded_iterations[i] = step_count
	if max_steps < step_count 
		max_steps = step_count
		max_num = i
	end	



end

puts max_steps
puts max_num

# puts $recorded_iterations 
