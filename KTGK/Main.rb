require_relative 'Quanly.rb'
require_relative 'Oto.rb'
require_relative 'Xemay.rb'
require_relative 'Xetai.rb'
class Main
    manager_226 = Quanly.new
    while true do
        puts "Quản lý các phương tiện giao thông"
        puts "Enter 1: Thêm các phương tiện giao thông"
        puts "Enter 2: Hiển thị danh sách  "
        puts "Enter 3: Xóa theo (ID) các phương tiện và thuộc các loại trên"
        puts "Enter 4: Tìm phương tiện theo hãng sản xuất màu biển số"
        puts "Enter 5: Thoát chương trình"
        option_226 = gets.chomp.to_i
        case option_226
            #Thêm các phương tiện giao thông: oto, xemay, xetai
            when 1 
                puts "Enter 1: Thêm oto"
                puts "Enter 2: Thêm xe may"
                puts "Enter 3: Thêm xe tải"
                choose_226 = gets.chomp.to_s
                #id_226, hsx_226, nsx_226, dongxe_226, gia_226, bienso_226, mauxe_226
                if choose_226 == "1" || choose_226 == "2" || choose_226 == "3"
                    puts "Nhập ID"
                    id_226  = gets.chomp.to_s
                    puts " Nhập hãng sản xuất:"
                    hsx_226 = gets.chomp.to_s
                    puts "Nhập nhà sản xuất "
                    nsx_226 = gets.chomp.to_s
                    puts "Nhập dòng xe "
                    dongxe_226 = gets.chomp.to_s
                    puts "Nhập giá bán "
                    gia_226 = gets.chomp.to_s
                    puts "Nhập biển số"
                    bienso_226 = gets.chomp.to_s
                    puts "Nhập màu xe "
                    mauxe_226 = gets.chomp.to_s
                end
                # thêm mới các xe
                case type_226
                    #numberSeat_226, :kieudongco_226, :nhienlieu_226, :sotuikhi_226,:ngaydangkiem_226
                    #Các ô tô: số chỗ ngồi, kiểu động cơ, nhiên liệu (xăng/dầu), số túi khí, ngày đăng kiểm.
                when "1" 
                    puts "Nhập số chỗ ngồi"
                    numberSeat_226 = gets.chomp.to_s
                    puts "Nhập kiểu động cơ "
                    kieudongco_226 = gets.chomp.to_s
                    oto_226 = car.new(id_226, hsx_226, nsx_226, dongxe_226, gia_226, bienso_226, mauxe_226, numberSeat_226, kieudongco_226, nhienlieu_226, sotuikhi_226, ngaydangkiem_226)
                    manager_226.addPhuongtien(oto_226)
                    puts oto_226.to_s
                    #xe may
                    ##Các xe máy: công suất, dung tích bình xăng.
                when "2" 
                    puts "Nhập công xuất"
                    congsuat_226 = gets.chomp.to_s
                    puts "Nhập dung tích bình xăng"
                    dungtichxang_226 = gets.chomp.to_s
                    xemay_226=xemay.new(id_226, hsx_226, nsx_226, dongxe_226, gia_226, bienso_226, mauxe_226,congsuat_226, dungtichxang_226)
                    manager_226.addPhuongtien(xemay_226)
                    puts xemay.to_s
                    #Xe tải cần quản lý thêm: Trọng tải.
                when "3" 
                    puts "Nhập trọng tải"
                    trongtai_226 = gets.chomp.to_s
                    xetai_226=xetai.new(id_226, hsx_226, nsx_226, dongxe_226, gia_226, bienso_226, mauxe_226, trongtai_226)
                    manager_226.addPhuongtien(xetai_226)
                    puts xetai.to_s
                else
                    exit
            end 
        #Hiển thị danh sách 
        when 2
        #Xóa theo (ID) các phương tiện và thuộc các loại trên
        when 3
        #Tìm phương tiện theo hãng sản xuất màu biển số"
        when 4    
        #5 Thoát khỏi chương trình
        else
            exit
        end
    end
end
