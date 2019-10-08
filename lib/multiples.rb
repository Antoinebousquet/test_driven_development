def sum_of_3_or_5_multiples(final_number)
	if final_number.class == String || final_number <= -1 || final_number.class == Float
		return "Yo ! Je ne prends que les entiers naturels. TG"
	end
	final_sum = 0
	for current_number in 0...final_number
		if is_multiple_of_3_or_5?(current_number) == true
		  final_sum = final_sum + current_number 
		end
	end
		return final_sum
end

def is_multiple_of_3_or_5?(a_number)
	if a_number % 3 == 0 || a_number % 5 == 0
		return true
	else
		return false
	end
end
