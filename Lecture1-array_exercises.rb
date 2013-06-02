arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

#arr.each do |element|
#	puts element if element > 5
#end

arr.select do |n|
	n.odd?
end

arr << 11
arr.unshift(0)

arr.pop
arr << 3

h = {a:1, b:2, c:3, d:4}
puts h[:b]

h[:e] = 5

h.delete_if do |k, v|
	v < 3.5
end

h[:f] = [1, 2, 3]
puts h