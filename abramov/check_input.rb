module CheckData
	def check_data(number)
		if number < 0 && number != Integer
			raise p "input Error!"
		end
	end
end