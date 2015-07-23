def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word,num=2)
	thisword = ""
	word = word+' '
	for i in 1..num
		thisword+=word
	end
	return thisword.gsub(/.{1}$/,'')
end