def echo(string)
	return string.to_s
end

def shout(string)
	return string.to_s.upcase
end

def repeat(string, reps = 2)
	return ("#{string} " * reps).chop
end

def start_of_word(string, depth = 1)
	return string[0..depth-1]
end

def first_word(string)
	return string.split[0]
end

def titleize(string)
	string = string.to_s
	string.capitalize!
	array = string.split
	little_words = ["of", "in", "or", "on", "and", "over", "under", "the", "a", "an", "but", "nor", "at", "for", "upon", "through", "above"]
	array.each do |word|
		word.capitalize! unless little_words.include? word
	end
	return array.join(" ")
end