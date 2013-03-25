module StudentsHelper
	def reformat_phone (number)
		number.insert 3, "-"
		number.insert 7, "-"
	end 
end
