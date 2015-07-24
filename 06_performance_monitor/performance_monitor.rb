
def measure (num=1)
	startTime=Time.now
	##if num>1 then
	##		num = [num]
	##end
	##ave=num.reduce(0){|sum,x| sum+=x }/num.size
	num.times { yield }
	(Time.now-startTime )/ (num == 1 ? 1:num)
end