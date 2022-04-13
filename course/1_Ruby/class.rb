class Student 
    attr_accessor :first_name, :last_name, :email, :username
    
    @first_name
    @last_name
    @email
    @username
    @password
    def initialize(first_name,last_name,username,email,password)
        @first_name = first_name
        @last_name = last_name
        @username = username
        @email = email
        @password = password
    end
    # def first_name=(name)
    #     @first_name = name
    # end
    
    # def first_name
    #     @first_name
    # end

    def to_s
        "First name: #{@first_name} , Last name #{@last_name}"
    end
end

student = Student.new('Vitor','Ramos','vitorrt','vitorrt@gmail.com','pass21')
puts student