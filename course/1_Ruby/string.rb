# Use simple quotes is better than duple quotes

first_name = 'Vitor'
last_name = 'Ramos Turibio'
full_name = first_name + ' ' + last_name 
puts "My first name is #{first_name} and my last name is #{last_name}"
puts full_name 

puts full_name.class
#string
puts 10.class
#integer
puts 11.1.class
#float
puts 10.to_s.class
#string


sentence = 'My name is Vitor'
puts sentence.sub('Vitor','Outro Nome')
