require_relative 'QuanlyPhuongtien.rb'
require_relative 'Xetai.rb'
require_relative 'Oto.rb'
require_relative 'Xemay.rb'
class Main
    qlpt_226 = QuanlyPhuongtien.new
    while true do
        puts "Nhap 1: them phuong tien"
        puts "Nhap 2: xoa phuong tien"
        puts "Nhap 3: tim phuong tien"
        puts "Nhap 4: hiem thi danh sach"
        puts "Nhap 5: thoat"
        num_226 = gets.chomp.to_i
        case num_226
        when 1
            puts "Nhap a: them Oto"
            puts "Nhap b: them xe may"
            puts "Nhap c: them xe tai"
            type_226 = gets.chomp.to_s
            if type_226 == "a" || type_226 == "b" || type_226 == "c"
                print "Nhap id: "
                id_226 = gets.chomp.to_s
                print "Nhap hang san xuat: "
                hsx_226 = gets.chomp.to_s
                print "Nhap nam san xuat: "
                nsx_226 = gets.chomp.to_i
                print "Nhap dong xe: "
                dongXe_226 = gets.chomp.to_s
                print "Nhap gia ban: "
                giaBan_226 = gets.chomp.to_i
                print "Nhap mau: "
                mau_226 = gets.chomp.to_s
                print "Nhap bien so: "
                bienSo_226 = gets.chomp.to_s
            end
            case type_226
            when "a"
                print "Nhap so cho ngoi: "
                choNgoi_226 = gets.chomp.to_i
                print "Nhap kieu dong co: "
                dongCo_226 = gets.chomp.to_s
                print "Nhap nhien lieu: "
                nhienLieu_226 = gets.chomp.to_s
                print "Nhap so tui khi: "
                soTuiKhi_226 = gets.chomp.to_i
                print "Nhap ngay kiem dang: "
                ngayDangKiem_226 = gets.chomp.to_s
                oto_226 = Oto.new(id_226, hsx_226, nsx_226, dongXe_226, giaBan_226, mau_226, bienSo_226, choNgoi_226, dongCo_226, nhienLieu_226, soTuiKhi_226, ngayDangKiem_226)
                qlpt_226.addPhuongtien(oto_226)
                puts oto_226.to_s
            when "b"
                print "Nhap cong suat: "
                congSuat_226 = gets.chomp.to_i
                print "Nhap dung tich: "
                dungTichXang_226 = gets.chomp.to_s
                xemay_226 = Xemay.new(id_226, hsx_226, nsx_226, dongXe_226, giaBan_226, mau_226, bienSo_226, congSuat_226, dungTichXang_226)
                qlpt_226.addPhuongtien(xemay_226)
                puts xemay_226.to_s
            when "c"
                print "Nhap trong tai: "
                trongTai_226 = gets.chomp.to_i
                xetai_226 = Xetai.new(id_226, hsx_226, nsx_226, dongXe_226, giaBan_226, mau_226, bienSo_226, trongTai_226)
                qlpt_226.addPhuongtien(xetai_226)
                puts xetai_226.to_s
            else
                exit
            end
        when 2
            print "Nhap id: "
            id_226 = gets.chomp.to_s
            qlpt_226.deletePhuongtien(id_226)
            qlpt_226.showPhuongtien
        when 3
            puts "Nhap a: tim theo hang san xuat"
            puts "Nhap b: them xe mau"
            puts "Nhap c: them bien so"
            find_226 = gets.chomp.to_s
            case find_226
            when "a"
                print "Nhap hang san xuat: "
                hsx_226 = gets.chomp.to_s
                qlpt_226.findHSX(hsx_226)
            when "b"
                print "Nhap mau: "
                mau_226 = gets.chomp.to_s
                qlpt_226.findMau(mau_226)
            when "c"
                print "Nhap bien so: "
                bienSo_226 = gets.chomp.to_s
                qlpt_226.findBienSo(bienSo_226)
            else
                exit
            end
        when 4
            qlpt_226.showPhuongtien
        else
            exit
        end
    end
end