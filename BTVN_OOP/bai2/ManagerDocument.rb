require_relative 'Book.rb'
require_relative 'Journal.rb'
require_relative 'Newspaper.rb'
class ManagerDocument
    $listDocument_226 = Array.new
    def addDocument(documnet_226)
        $listDocument_226.push(documnet_226) 
    end
    def findByName(id_226)
        $listDocument_226.each do|i_226|
            if i_226.name_226 == name_226
                return i_226.display
            end
        end
    end
    def showListInforDocument()
        $listDocument_226.each do |i_226|
            i_226.display
        end
    end
end