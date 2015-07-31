class Book
	attr_accessor :title
	def title=(title)     #attribute,variable specific to class instance, accessor ##same as def title(title) = method
		newtitle = title.split
		@title = newtitle.slice(0).capitalize
		if newtitle.size>1
		@title<<" "<<newtitle[1..-1].map{|x| %w(and or of in the a an).include?(x)? x : x.capitalize}.join(" ")
		end
	end

end