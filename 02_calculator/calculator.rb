def add (a, b)
	return a + b 
end

#write your code here
def subtract (a,b)
	return a - b
end

def sum(array)
	return 0 if array == []
	return array.inject(:+)
end

def multiply(*args)
	return args.inject(1, :*)
end

def power(a,b)
	return a**b
end

def factorial(n)
	return 1 if n < 1
	multiple = 1
	for i in 1..n
		multiple *= i
	end
	return multiple
end