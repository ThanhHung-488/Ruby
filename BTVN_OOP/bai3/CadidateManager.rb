require_relative 'CadidateA.rb'
require_relative 'CadidateB.rb'
require_relative 'CadidateC.rb'
class CadidateManager
    $listCadidate_226 = Array.new
    def addCadidate(cadidate_226)
        $listCadidate_226.push(cadidate_226)
    end
    def showCadidate()
        $listCadidate_226.each do |i_226|
            i_226.display
        end
    end
    def findById(id_226)
        $listCadidate_226.each do |i_226|
            if i_226.id_226 == id_226
                i_226.display
            end
        end
    end
end