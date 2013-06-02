def old_romanize(num)
	numerals = ['M', 'D', 'C', 'L', 'X', 'V', 'I']
	numbers = [1000, 500, 100, 50, 10, 5, 1]
	romanized_num = ""
	numbers.each_with_index do  |value, index|
		while (num % value) != num && num != 0
			romanized_num << numerals[index]
			num -= value
		end
	end
	return romanized_num
end

def new_romanize(num)
	numerals = ['M', 'D', 'C', 'L', 'X', 'V', 'I']
	numbers = [1000, 500, 100, 50, 10, 5, 1]
	romanized_num = ""
	numbers.each_with_index do  |value, index|		
		while (num % value) != num && num > 0
			puts "num: #{num}, current: #{value}, value: #{numbers[index - 1].to_i}"
			if numbers[index - 1].to_i - num <=  value && numbers[index - 1].to_i - num > 0 && num != value 
				romanized_num << numerals[index]
				romanized_num << numerals[index - 1].to_s
				num -= 4*value
			else
				romanized_num << numerals[index]
				num -= value
			end	
		end
	end
	return romanized_num
end

print "Enter number: "
number = gets.chomp.to_i
puts "In old roman numerals: #{old_romanize(number)}"
puts "In new roman numerals: #{new_romanize(number)}"