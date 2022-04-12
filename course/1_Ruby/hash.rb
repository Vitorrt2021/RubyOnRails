sample_hash = {
    'a' => 1,
    'b' => 2,
    'c' => 3
}
another_hash = {
    a: 1,
    b: 2,
    c: 3
}

another_hash[:d] = 4

state = {
    'Minas Gerais' => "MG",
    'São Paulo' => "SP",
}

p another_hash.keys[0].class

p state['Minas Gerais']
p another_hash[:a]
p sample_hash.keys
p sample_hash.values

another_hash.each do |key,value|
    puts key.to_s + " : " + value.to_s
end