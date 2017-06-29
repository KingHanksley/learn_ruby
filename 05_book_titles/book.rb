require_relative '../03_simon_says/simon_says.rb'

class Book
	attr_accessor :title

	def title=(value)
		@title = titleize(value)
	end
# write your code here
end
