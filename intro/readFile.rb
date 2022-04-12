File.open('employess.txt','r') do |file|    
    puts file.read()
        .upcase()
        .include? 'Vitor'.upcase()

end


File.open('employess.txt','a') do |file|    
    file.write("\n Marlu, Accounting")
end

