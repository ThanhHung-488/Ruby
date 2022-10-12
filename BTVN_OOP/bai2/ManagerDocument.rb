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
    def deleteDocument(id_226)
        $listDocument_226.each do |i_226|
            if i_226.id_226 == id_226
                $listDocument_226.delete(i_226)
            end
        showListInforDocument()
    end
    def findtoBook()
        $listDocument_226.each { |i_226| 
            if i_226.instance_variable_get(:@author_226)
                i_226.display
            end
        }
    end
    def findtoNewspaper()
        $listDocument_226.each { |i_226| 
            if i_226.instance_variable_get(:@dayIssue_226)
                i_226.display
            end
        }
    end
    def findtoJournal()
        $listDocument_226.each { |i_226| 
            if i_226.instance_variable_get(:@monthIssue_226)
                i_226.display
            end
        }
    end    
end