require_relative 'Phuongtien.rb'
class Oto < Phuongtien
    attr_accessor :choNgoi_226, :dongCo_226, :nhienLieu_226, :soTuiKhi_226, :ngayDangKiem_226
    def initialize(id_226, hsx_226, nsx_226, dongXe_226, giaBan_226, mau_226, bienSo_226, choNgoi_226, dongCo_226, nhienLieu_226, soTuiKhi_226, ngayDangKiem_226)
        super(id_226, hsx_226, nsx_226, dongXe_226, giaBan_226, mau_226, bienSo_226)
        @choNgoi_226 = choNgoi_226
        @dongCo_226 = dongCo_226
        @nhienLieu_226 = nhienLieu_226
        @soTuiKhi_226 = soTuiKhi_226
        @ngayDangKiem_226 = ngayDangKiem_226
    end
    def to_s
        return "Oto: id = #{id_226}, hangsx = #{hsx_226}, namsx = #{nsx_226}, dong = #{dongXe_226}, gia = #{giaBan_226}, mau = #{mau_226}, bien so = #{bienSo_226}, cho ngoi = #{choNgoi_226}, dong co = #{dongCo_226}, nhien lieu = #{nhienLieu_226}, so tui khi = #{soTuiKhi_226}, ngay kiem dang = #{ngayDangKiem_226}\n"
    end
end