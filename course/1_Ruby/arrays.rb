a = [1,2,3,4,5]

a << 6
a.unshift(0)

puts a.last
puts a.first
puts a.empty?

puts a.join('-')
puts a.join(", ")

x = 1..10
puts x.class
# pass to an array
p x.to_a

p x.to_a.shuffle

alf = "a".."z"
p alf.to_a
p alf.to_a.shuffle


words =  %w(my name is vitor)

words.each do |word|
    print word + " "
end

puts ' '

words.each {|food| print food + " "}

puts ' '

for i in words
    print i + " "
end
puts ' '

z = (1..20).to_a.shuffle
p z.select { |number| number.odd?}