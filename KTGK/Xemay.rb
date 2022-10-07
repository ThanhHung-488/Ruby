require_relative 'Phuongtien.rb'
class Xemay < Phuongtien
    attr_accessor :congSuat_226, :dungTichXang_226
    def initialize(id_226, hsx_226, nsx_226, dongXe_226, giaBan_226, mau_226, bienSo_226, congSuat_226, dungTichXang_226)
        super(id_226, hsx_226, nsx_226, dongXe_226, giaBan_226,mau_226, bienSo_226)
        @congSuat_226 = congSuat_226
        @dungTichXang_226 = dungTichXang_226
    end
    def to_s
        return "Xe may: id = #{id_226}, hangsx = #{hsx_226}, namsx = #{nsx_226}, dong = #{dongXe_226}, gia = #{giaBan_226}, mau = #{mau_226}, bien so = #{bienSo_226}, cong suat = #{congSuat_226}, dung tich = #{dungTichXang_226}\n"
    end
end