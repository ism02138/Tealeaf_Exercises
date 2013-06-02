require 'pry'

def convert_operator_to_text(op)
	case op
	when '1'
		'Add'
	when '2'
		'Subtract'
	when '3'
		'Divide'
	end
end

puts "=> What's your name?"
name = gets.chomp

print "=> What's the first number: "
num1 = gets.chomp
puts "=> You chose #{num1}"

print "=> What's the second number: "
num2 = gets.chomp
puts "=> You chose #{num2}"

print "=> 1. Add 2. Subtract 3. Divide: "
operator = gets.chomp

result = nil

if operator == '1'
	result = num1.to_f + num2.to_f
elsif operator == '2'
	result = num1.to_f - num2.to_f
elsif operator == '3'
	result = num1.to_f / num2.to_f
end

puts "=> #{convert_operator_to_text(operator)} yields result: #{result}"
