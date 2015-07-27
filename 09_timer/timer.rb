require 'time'
class Timer
	attr_accessor :time_string
	attr_accessor :seconds
	def initialize(seconds = 0, time_string = "00:00:00")
		@seconds = seconds
		@time_string = time_string
	end

	def seconds=(seconds)
		@time_string = (Time.parse(@time_string)+seconds).to_s.split[1]
		@seconds = seconds
	end

end