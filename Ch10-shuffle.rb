to_shuffle = ['Squirrel', 'Panda', 'Sitting', 'In', 'A', 'Tree', 'KISSING']

# preferred method
puts to_shuffle.shuffle

# other way
puts to_shuffle.sort_by{rand}