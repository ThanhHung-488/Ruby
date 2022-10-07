require_relative 'Oto.rb'
require_relative 'Xemay.rb'
require_relative 'Xetai.rb'
require_relative 'Quanly.rb'
class Quanly
    $listQuanly_226 = Array.new
    def addPhuongtien(phuongtien_226)
        $listQLPTGT_226.push(phuongtien_226) 
    end
    def findByName(id_226)
        $listQuanly_226.each do|i_226|
            if i_226.id_226 == id_226
                return i_226.display
            end
        end
    end
    def showListPhuongtien()
        $listQuanly_226.each do |i_226|
            i_226.display
        end
    end
end