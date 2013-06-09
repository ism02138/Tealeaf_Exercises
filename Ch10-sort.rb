def sort(array)
	return array if array.length <= 1
	pivot = array.pop
	less = []
	greater = []
	array.each { |x| 
		if x <= pivot
			less << x
		else
			greater << x
		end
		}
	sort(less) + [pivot] + sort(greater)
end

def sort_better(array)
	return array if array.length <= 1
	middle = array.pop
	less = array.select{ |x| x < middle }
	greater = array.select{ |x| x >= middle}
	sort_better(less) + [middle] + sort_better(greater)
end


to_sort = ['Squirrel', 'Panda', 'Sitting', 'In', 'A', 'Tree', 'KISSING']
puts sort(to_sort)
to_sort = ['Squirrel', 'Panda', 'Sitting', 'In', 'A', 'Tree', 'KISSING']
puts sort_better(to_sort)