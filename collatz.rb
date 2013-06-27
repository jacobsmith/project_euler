#if n is even, n = n/2
#if n is odd, n = 3n+1

$recorded_iterations = []
$init = 0
$steps = 0

def collatz(n)
#	if $recorded_iterations[n]
#		$recorded_iterations[init] = $recorded_iterations[n] + steps
#	end

	if n == 1
		return n
	elsif n % 2 == 0
#		puts n
		collatz(n/2)
	else
#		puts n
		collatz((3*n)+1)
	end
	$steps += 1
end

input = ARGV[0]
max_steps = 0
max_num = 0
init = (1..input).each do |i|


	collatz(i)
	if max_steps < $steps
		max_steps = $steps
		max_num = i
	end	


	$steps = 0
end

puts max_steps
puts max_num 
