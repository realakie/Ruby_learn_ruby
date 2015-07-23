def translate(word)
	lastword = ''
	word.split(' ').each{ |x| x.include?('q')==true ?  lastword+=startQ(x)+" " : (x[0].match(/[aeiou]/) ? lastword+=startVowel(x)+" " : lastword+=startConso(x)+" ")}
	return lastword.gsub(/.{1}$/,'')
=begin
	if (x[0].match(/[aeiou]/).nil?)==false
		#[aeiou] == a|e|i|o|u
		startVowel(x)
	else
		startConso(x)
	end
=end

end

def startVowel(word)
	word << "ay"
end

def startConso(word)
	pre = word.split(/[aeiou]/).first
	"#{word[pre.length..-1]}#{pre}ay"
end

def startQ(word)
	pre = word.split('u').first + "u"
	"#{word[pre.length..-1]}#{pre}ay"
end
