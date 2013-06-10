class OrangeTree
	def initialize
		@oranges = 0
		@age = 0
		@height = 0
	end
	def count_the_oranges
		puts "Pick an orange: #{@oranges} oranges remain"
	end
	def pick_an_orange
		@oranges -= 1
	end
	def one_year_passes
		@age += 1
		@height += rand(4)
		oranges_grow = rand(7)
		puts "#{oranges_grow} oranges grow"
		@oranges = oranges_grow
		puts "#{@oranges} remain, the tree is #{@age} years old"
	end
	def height
		return @height
	end
end

my_tree = OrangeTree.new
my_tree.one_year_passes
my_tree.pick_an_orange
my_tree.count_the_oranges