require_relative 'Cadidate.rb'
class CadidateB < Cadidate
    Math = "Toan"
    Chemistry = "Hoa"
    Biological = "Sinh"
    def initialize(id_226, name_226, address_226, priority_226)
        super(id_226, name_226, address_226, priority_226)
    end
    def to_s
        return "CadidateB: #{id_226} | #{name_226} | #{address_226} | #{priority_226}, Subject:  #{Math} - #{Chemistry} - #{Biological} \n"
    end
end