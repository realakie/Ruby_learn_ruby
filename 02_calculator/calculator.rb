=begin
def add(a,b)
	if a=='' then
		a=0
	end
	if b=='' then
		b=0
	end
	a+b
end
=end
def add(*numbers)
	numbers.inject(0){ |sum, number| sum + number}
end
def subtract(a,b)
	if a=='' then
		a=0
	end
	if b=='' then
		b=0
	end
	a-b
end


def sum(array)
	total=0
	if array.any? == true then
		array.each{|x| total+=x}
	#	array.each do |x|
	#		total += x
	#	end
	end
	return total
end

def multiply(array)
	total=1
	if array.any? == true then
		array.each{|x| total*=x}
	end
	return total
end

def power(num,raised)
	total = 1
	for i in 1..raised
		total*=num
	end
	return total
end

def factorial(num)
	total = 1
	for i in 1..num
		total*=i
	end
	return total
end

