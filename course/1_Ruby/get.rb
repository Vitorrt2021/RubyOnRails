# puts "What is your first name?"
# first_name = gets.chomp()

# puts first_name

# puts "What is your age?"
# age = gets.chomp().to_i
# p age


puts "Enter you first name: "
first_name = gets.chomp()

puts "Enter you last name: "
last_name = gets.chomp()

full_name = "#{first_name} #{last_name}"
puts "Your full name is #{full_name} "
puts "Your full name reverse is #{full_name.reverse} "
puts "Your full name has #{full_name.length} characters in it "
