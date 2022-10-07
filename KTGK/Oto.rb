require_relative 'Phuongtien.rb'
class Oto < Phuongtien
    #Các ô tô: số chỗ ngồi, kiểu động cơ, nhiên liệu (xăng/dầu), số túi khí, ngày đăng kiểm.
    attr_accessor :numberSeat_226, :kieudongco_226, :nhienlieu_226, :sotuikhi_226, :ngaydangkiem_226
    def initialize(id_226, hsx_226, nsx_226, dongxe_226, gia_226, bienso_226, mauxe_226, numberSeat_226, kieudongco_226, nhienlieu_226, sotuikhi_226, ngaydangkiem_226)
        @numberSeat_226 = numberSeat_226
        @kieudongco_226 = kieudongco_226
        @nhienlieu_226 = nhienlieu_226
        @sotuikhi_226 = sotuikhi_226
        @ngaydangkiem_226 = ngaydangkiem_226
    end
    def to_s
        return "O to: #{id_226} |#{hsx_226} |#{nsx_226} |#{dongxe_226} |#{gia_226} |#{bienso_226} |#{mauxe_226} |#{numberSeat_226} |#{kieudongco_226} |#{nhienlieu_226} |#{sotuikhi_226} |#{ngaydangkiem_226}"
    end
end