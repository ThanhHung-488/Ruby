require_relative 'Phuongtien.rb'
class Xemay < Phuongtien
    #Các xe máy có các thuộc tính riêng: công suất, dung tích bình xăng.
    attr_accessor :congsuat_226, :dungtichxang_226
    def initialize(id_226, hsx_226, nsx_226, dongxe_226, gia_226, bienso_226, mauxe_226,congsuat_226, dungtichxang_226)
        @congsuat_226 = congsuat_226
        @dungtichxang_226 = dungtichxang_226
    end
    def to_s
        return "Xe may: #{id_226} |#{hsx_226} |#{nsx_226} |#{dongxe_226} |#{gia_226} |#{bienso_226} |#{mauxe_226} |#{congsuat_226} |#{dungtichxang_226}"
    end
end