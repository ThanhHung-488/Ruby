require_relative 'Xetai.rb'
require_relative 'Oto.rb'
require_relative 'Xemay.rb'
class QuanlyPhuongtien
    $listPhuongtien_226 = Array.new
    def addPhuongtien(phuongtien_226)
        $listPhuongtien_226.push(phuongtien_226)
    end
    def showPhuongtien
        $listPhuongtien_226.each do |i_226|
            i_226.display
        end
    end
    def deletePhuongtien(id_226)
        $listPhuongtien_226.each do |i_226|
            if i_226.id_226 == id_226
                $listPhuongtien_226.delete(i_226)
            end
        end
    end
    def findHSX(hsx_226)
        $listPhuongtien_226.each do |i_226|
            if i_226.hsx_226 == hsx_226
                i_226.display
            end
        end
    end
    def findMau(mau_226)
        $listPhuongtien_226.each do |i_226|
            if i_226.mau_226 == mau_226
                i_226.display
            end
        end
    end
    def findBienSo(bienSo_226)
        $listPhuongtien_226.each do |i_226|
            if i_226.bienSo_226 ==  bienSo_226
                i_226.display
            end
        end
    end
end