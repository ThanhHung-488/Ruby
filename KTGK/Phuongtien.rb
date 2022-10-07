#Mỗi loại gồm các thông tin: ID, Hãng sản xuất, năm sản xuất, dòng xe, giá bán, biển số và màu xe.
class Phuongtien
    attr_accessor :id_226, :hsx_226, :nsx_226, :dongxe_226, :gia_226, :bienso_226, :mauxe_226
    def initialize(id_226, hsx_226, nsx_226, dongxe_226, gia_226, bienso_226, mauxe_226)
        @id_226 = id_226
        @hsx_226 = hsx_226
        @nsx_226 = nsx_226
        @dongxe_226 = dongxe_226
        @gia_226 = gia_226
        @bienso_226 = bienso_226
        @mauxe_226 = mauxe_226
    end