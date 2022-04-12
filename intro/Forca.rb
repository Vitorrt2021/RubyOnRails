require_relative 'Hello.rb'
include Tools

puts Tools.pow(2,3)
# def forca
#     palavra = 'MARTELO'
#     letras = Array['A','F']

#     mostrarPalavra(letras,palavra)

# end


# def mostrarPalavra(letras,palavra)
#     for index in 0..palavra.length()
#         if(letras.include? palavra[index])
#             print palavra[index]
#         else
#             print '_'
#         end
#     end
#     puts ''
#     print letras
# end

# forca

begin
    num = 10/0
rescue ZeroDivisionError
    puts "Division by zero error"
rescue TypeError
    puts "Wrong Type"
rescue 
    puts "Deu erro"
end 


class Book
    attr_accessor :title, :author, :pages
    def initialize(title,author,pages)
        @title = title
        @author = author
        @pages = pages
    end
    
    def getTitle
        return @title
    end
end

book1 = Book.new('Harry Potter','JK Rowling',430)

puts book1
puts book1.author
puts book1.getTitle



class Chef
    def make_chicken
        puts 'The chef makes chicken'
    end
end

class ItalinChef < Chef
    def make_italian_food
        puts 'The chef makes italian food'
    end
end

chef = Chef.new()
chef.make_chicken

italin_chef  = ItalinChef.new()
italin_chef.make_chicken
italin_chef.make_italian_food