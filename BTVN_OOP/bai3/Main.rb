require_relative 'CadidateA.rb'
require_relative 'CadidateB.rb'
require_relative 'CadidateC.rb'
require_relative 'CadidateManager.rb'
class Main
    cadManager_226 = CadidateManager.new
    while true do
        puts "Application Manager Candidate"
        puts "Enter 1: To insert candidate"
        puts "Enter 2: To show information of candidate "
        puts "Enter 3: To search candidate by id"
        puts "Enter 4: To exit:"
        line_226 = gets.chomp.to_i
        case line_226
        when 1
            puts "Enter a: to insert Candidate A"
            puts "Enter b: to insert Candidate B"
            puts "Enter c: to insert Candidate C"
            type_226 = gets.chomp.to_s
            if type_226 == "a" || type_226 == "b" || type_226 == "c"
                puts "Enter ID: "
                id_226 = gets.chomp.to_s
                puts "Enter name: "
                name_226 = gets.chomp.to_s
                puts "Enter address: "
                address_226 = gets.chomp.to_s
                puts "Enter Priotity: "
                priority_226 = gets.chomp.to_s
            end
            case type_226
            when "a"
                cadidateA_226 = CadidateA.new(id_226, name_226, address_226, priority_226)
                cadManager_226.addCadidate(cadidateA_226)
                puts cadidateA_226.to_s
            when "b"
                cadidateB_226 = CadidateB.new(id_226, name_226, address_226, priority_226)
                cadManager_226.addCadidate(cadidateB_226)
                puts cadidateB_226.to_s
            when "c"
                cadidateC_226 = CadidateC.new(id_226, name_226, address_226, priority_226)
                cadManager_226.addCadidate(cadidateC_226)
                puts cadidateC_226.to_s
            else
                exit
            end
        when 2
            cadManager_226.showCadidate()
        when 3
            puts "Enter id want to search"
            id_226 = gets.chomp.to_s
            cadManager_226.findById(id_226)
        else
            exit
        end
    end
end