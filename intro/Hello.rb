# Linhas diferentes
puts "Hello"
# Mesma linha
print "Hello world"

user_name = "Vitor"
user_age = "18"
puts  ("\nName: " + user_name + " Years: " + user_age)


bool = true
age = 34
gpa = 2.4
flaws = nil

puts "#{user_name} have #{age} years old".upcase()

puts user_name[0,3]

#############################
# Ler dados do usuario

# puts "Enter Your Name: "
# username = gets
# puts "Enter Your Age: "
# userage = gets.chomp()
# puts "Your name is #{username} and have #{userage} years"

#############################

# Array
cs = Array.new
cs[0] = 1
puts cs[0] 


names = Array['Vitor','Karen','Oscar',false,12.3]
puts "Array \n"+names[2]
puts names[-1] 


# Hash
states = {
    "Minas Gerais" => "MG",
    "São Paulo" => "SP",
    "Espirito Santo" => "ES"
}
puts '==========================='
puts states
puts states["Minas Gerais"]







def cube(num)
    return num*num*num,num
end

def hi(nome='Sem nome')
    puts "Olá #{nome}"
end

def sayhi
    puts 'Hi'
end

puts '============================'
puts cube(4)[0]
puts cube(4)[1]
sayhi
puts '============================'


def eMaior(idade)
    if idade > 18
        return true
    else
        return false
    end
end

puts eMaior(17)
puts '============================'

def cout(number)
    cont = 0
    while cont <= number
        puts cont
        cont = 1 + cont
    end
end

cout(2)

def forCont(number)
    number.times do |i|
        puts i
    end
end

puts '============================'

forCont(2)

puts '============================'

def pow(base_num, pow_num)
    result =1
    pow_num.times do 
        result = result * base_num
    end
    return result
end
puts pow(2,5)
puts '============================'



def addInteger(number1,number2)
    puts number1.to_i + number2.to_i
end
def addFloats(number1,number2)
    puts number1.to_f + number2.to_f
end
    
addInteger(12,23)
addFloats(12.23,423.22222)




hi('Cara')

class Anfitriao
    def initialize(nome = "Mundo")
        @nome = nome
    end
    def diz_ola
        puts "Ola #{@nome}"
    end
    def diz_adeus
        puts "Adeus #{@nome}, volte sempre"
    end
end

marcos = Anfitriao.new('Marcos')
marcos.diz_ola()


module Tools
    def pow(base_num, pow_num)
        result =1
        pow_num.times do 
            result = result * base_num
        end
        return result
    end
end