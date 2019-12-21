def recursive_fib(n)
	if n <= 1
		return n
	end
	return recursive_fib(n-1) + recursive_fib(n-2)
end

def iterative_fib(n)
	a, b = 0, 1
	while n > 0
		a, b = b, a + b
		n -= 1
	end
	return a
end

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end