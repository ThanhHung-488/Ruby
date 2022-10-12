require_relative 'Cadidate.rb'
class CadidateC < Cadidate
    Literary = "Văn"
    History = "Su"
    Geography = "Dia"
    def initialize(id_226, name_226, address_226, priority_226)
        super(id_226, name_226, address_226, priority_226)
    end
    def to_s
        return "CadidateC: #{id_226} | #{name_226} | #{address_226} | #{priority_226}, Subject:  #{Literary} - #{History} - #{Geography} \n"
    end
end