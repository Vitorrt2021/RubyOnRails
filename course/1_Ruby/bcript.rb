require 'bcrypt'

my_password = BCrypt::Password.create("my password")
#=> "$2a$12$K0ByB.6YI2/OYrB4fQOYLe6Tv0datUVf6VZ/2Jzwm879BW5K1cHey"

# puts my_password
# puts my_password.version              #=> "2a"
# puts my_password.cost                 #=> 12
# puts my_password == "my password"     #=> true
# puts my_password == "not my password" #=> false

password_hash = BCrypt::Password.create("pasw")
puts password_hash
password_free = BCrypt::Password.new(password_hash)
puts password_free

module Crud
    require 'bcrypt'
    puts "Module CRUD activated"
   
    def Crud.create_hash_digest(password)
      BCrypt::Password.create(password)
    end
   
    def Crud.verify_hash_digest(password)
      BCrypt::Password.new(password)
    end
   
    def Crud.create_secure_users(list_of_users)
      list_of_users.each do |user_record|
        user_record[:password] = create_hash_digest(user_record[:password])
      end
      list_of_users
    end
   
    def Crud.authenticate_user(username, password, list_of_users)
      list_of_users.each do |user_record|
        if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
          return user_record
        end
      end
      "Credentials were not correct"
    end
  end