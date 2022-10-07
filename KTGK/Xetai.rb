require_relative 'Phuongtien.rb'
class Xetai < Phuongtien
    #Xe tải cần quản lý thêm: Trọng tải.
    attr_accessor :trongtai_226
    def initialize(id_226, hsx_226, nsx_226, dongxe_226, gia_226, bienso_226, mauxe_226, trongtai_226)
        @congsuat_226 = congsuat_226
        @dungtichxang_226 = dungtichxang_226
    end
    def to_s
        return "Xe tai: #{id_226} |#{hsx_226} |#{nsx_226} |#{dongxe_226} |#{gia_226} |#{bienso_226} |#{mauxe_226} |#{trongtai_226}"
    end
end