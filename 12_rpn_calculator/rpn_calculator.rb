class RPNCalculator
	
	def initialize()
		@calculator=[]
	end
	def push(num)
		@calculator.push(num)
	end
	def plus
		calc("+")
	end
	def minus
		calc("-")
	end
	def divide
		calc("/")
	end
	def times
		calc("*")
	end
	def value
		@calculator[-1]
	end
	def tokens(rpnString)
		rpnString.split.collect!{|x| x.match(/^(\d)+$/) ? x.to_i : x.to_sym}
	end

	def calc(sym)
		raise "calculator is empty" if @calculator.empty?
		num1 = @calculator.pop * 1.0
		@calculator.push(@calculator.pop.send sym, num1)
	end
	def evaluate(rpnString)
		rpnString.split.each{|x| x.match(/^(\d)+$/) ? @calculator.push(x.to_i): calc(x)}
		value
	end
end
