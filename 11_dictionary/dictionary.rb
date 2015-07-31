class Dictionary
	def initialize(hsh={})
		@dictionary = hsh
	end
	def add(hsh)
		hash = hsh.is_a?(Hash) ?  hsh : {hsh.to_s => nil}
		@dictionary.merge!(hash)
	end
	def entries
		@dictionary
	end
	def keywords
		@dictionary.keys
	end
	def include?(keyval)
		@dictionary[keyval]
	end
	def find(keyval)
		@dictionary.select { |k,v| k.include?(keyval) == true}
	end
	def keywords
		@dictionary.keys.sort
	end
	def printable
		sentence =''

		@dictionary.keys.sort.map{|x| sentence+= '['+x+'] '+@dictionary[x].inspect+"\n"}
		sentence[0..-2]
	end
end