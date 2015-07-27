class Temperature
	
	def initialize(parameter = {})
		@f = parameter.fetch(:f,nil)
		@c = parameter.fetch(:c,nil)
			
	end
	def in_celsius
		if @c.nil? == true then
			#@c = (@f-32)*5/9
			ftoc(@f)
		end
		@c
	end
	def in_fahrenheit
		if @f.nil? == true then
			#@f = (@c+17)*9.0/5
			#@f = (@c*9.0/5)+32
			ctof(@c)
		end
		@f
	end
	def self.from_celsius(c)
		self.new(:c => c)
	end
	def self.from_fahrenheit(f)
		self.new(:f => f)
	end
	def ctof(c)
		@f = (c*9.0/5)+32
	end
	def ftoc(f)
		@c = (f-32)*5/9
	end
end

class Celsius < Temperature
	def initialize(c)
		@c = c
	end
end
class Fahrenheit < Temperature
	def initialize(f)
		@f = f
	end
end