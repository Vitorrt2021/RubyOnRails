
def login
    users = [
        {username: 'mashrur', password: 'password'},
        {username: 'jack', password: 'password2'},
        {username: 'arya', passowrd: 'password3'},
        {username: 'jonshow', password: 'password4'},
        {username: 'v', password: 'p'},
        {username: 'heisenberg', password: 'password5'}
    ]
    
    puts 'Enter your username: '
    username = gets.chomp()
    puts 'Enter your password: '
    password = gets.chomp()
   
    for user in users
        if(user[:username] == username && user[:password] == password)
            return true
        end
    end
    return false
end

while !login
    puts '='*20
    puts 'falied do login'
    puts '='*20
end

