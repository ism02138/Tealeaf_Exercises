def beer_on_the_wall(num)
	if num == 0
		puts "=> We're out of beer"
	else
		puts "=> #{num} bottles of beer on the wall, #{num} bottles of beer"
		puts "=> take one down, pass it around, #{num} bottles of beer on the wall"
		beer_on_the_wall(num - 1)
	end
end


puts "=> Get ready!"
puts "=> How thirsty are you? (1-99)"
number = gets.chomp.to_i
beer_on_the_wall(number)