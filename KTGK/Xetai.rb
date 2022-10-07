require_relative 'Phuongtien.rb'
class Xetai < Phuongtien
    attr_accessor :trongTai_226
    def initialize(id_226, hsx_226, nsx_226, dongXe_226, giaBan_226, mau_226, bienSo_226, trongTai_226)
        super(id_226, hsx_226, nsx_226, dongXe_226, giaBan_226, mau_226, bienSo_226)
        @trongTai_226 = trongTai_226
    end
    def to_s
        return "Xe tai: id = #{id_226}, hangsx = #{hsx_226}, namsx = #{nsx_226}, dong = #{dongXe_226}, gia = #{giaBan_226}, mau = #{mau_226}, bien so = #{bienSo_226}, trong tai = #{trongTai_226}\n"
    end
end