print "=>When were you born? "
birthday = gets.chomp.split('/', 3)

time_now = Time.new
year_now = time_now.year
month_now = time_now.month
day_now = time_now.day

years =  year_now - birthday[2].to_i
months = month_now - birthday[0].to_i
days = day_now - birthday[1].to_i

years -= 1 if (months < 0 || (months == 0 && days < 0))

puts "=>You are #{years} years old"