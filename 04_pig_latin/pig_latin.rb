def translate(sentence)
	array = sentence.split(" ")
	array.map! {|word| translate_a_word(word)}
	return array.join(" ")
end


def translate_a_word(string)
	if /[aeiou]/.match(string[0])
		return string + "ay"
	elsif /[aeiou]/.match(string).to_s == "u" and string[(string =~ /u/) - 1] == "q"
		 u_position = string =~ /u/
		 consonant_block = string[0..u_position]
		string[consonant_block] = ""
		string << consonant_block + "ay"
	else
		consonant_block = string.split(/[aeiou]/)[0]
		string[consonant_block] = ""
		string << consonant_block + "ay"
		return string
	end
end#write your code here
