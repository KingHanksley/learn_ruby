class Timer

	attr_accessor :seconds, :minutes, :hours

	def initialize
		@seconds = 0
		@minutes = 0
		@hours = 0
	end

	def check_time
		while @seconds > 60
			@minutes += 1
			@seconds -= 60
		end

		while @minutes > 60
			@hours += 1
			@minutes -= 60
		end

		while @hours > 24
			@hours -= 24
		end

	end


	def time_string
		check_time	
		sec_string = @seconds.to_s
		min_string = @minutes.to_s
		h_string = @hours.to_s
		sec_string = "0" + sec_string if sec_string.length == 1
		min_string = "0" + min_string if min_string.length == 1
		h_string = "0" + h_string if h_string.length == 1
		return "#{h_string}:#{min_string}:#{sec_string}"
	end
  #write your code here
end
