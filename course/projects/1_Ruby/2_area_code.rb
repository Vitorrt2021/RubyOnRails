dial_book = {
    "newyork" => "212",
    "newbrunwick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717",
}
def get_city_name(hash)
    hash.keys
end
def get_area_code(hash,keyIs)
    hash.each do |key,value|
        if(key == keyIs)
            return "The area code for #{key} is #{value}" 
        end
    end
    return false
end

while true
    puts 'Do you want to lookup an area code based on a city name?(Y/N)'
    answer = gets.chomp().upcase
    
    if answer == 'Y' 
        puts 'Which city do you want the area code for?'
        puts 'Enter you selection'

        puts get_city_name(dial_book)

        city = gets.chomp().downcase
        city_code =  get_area_code(dial_book,city)        
        if city_code
            puts city_code
        else 
            puts 'Don\'t have city with this name'
        end
    else
        break
    end
end