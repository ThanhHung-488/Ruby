require_relative 'Cadidate.rb'
class CadidateA < Cadidate
    Math = "Toan"
    Chemistry = "Hoa"
    Physics = "Ly"
    def initialize(id_226, name_226, address_226, priority_226)
        super(id_226, name_226, address_226, priority_226)
    end
    def to_s
        return "CadidateA: #{id_226} | #{name_226} | #{address_226} | #{priority_226}, Subject:  #{Math} - #{Physics} - #{Chemistry} \n"
    end
end