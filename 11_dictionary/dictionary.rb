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
		#true
		nil
		#@dictionary[keyval]
	end
end