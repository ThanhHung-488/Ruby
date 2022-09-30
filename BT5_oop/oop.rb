#Yêu cầu 1: Xây dựng các lớp CongNhan, KySu, NhanVien kế thừa từ lớp CanBo.
class CanBo
    #Họ tên, tuổi, giới tính(name, nữ, khác), địa chỉ.
    attr_accessor :ten226, :tuoi226, :gioitinh226, :diachi226
    def initialize ten226, tuoi226, gioitinh226, diachi226
        @ten226 = ten226
        @tuoi226 = tuoi226
        @gioitinh226 = gioitinh226
        @diachi226 = diachi226
    end
    def display 
        puts "Ten: #{@name226}"
        puts "Tuoi: #{@tuoi226}"
        puts "Gioi tinh: #{@gioitinh226}"
        puts "Dia chi: #{@diachi226}"
    end

end
 #Tạo lớp Công nhân kế thừa từ can bo
 class CongNhan < CanBo
    attr_accessor :bacdaotao226
    def initialize ten226, tuoi226, gioitinh226, diachi226, bac226
        super(ten226, tuoi226, gioitinh226, diachi226, bacdaotao226)
        @bacdaotao226 = bac226
    end
    def display
        super()
        puts("Bac dao tao: #@bacdaotao226")
    end
end
 #Tạo lớp Ky su kế thừa từ can bo
 class KySu < CanBo
    #Cấp kỹ sư có thuộc tính riêng: Nghành đào tạo.
    attr_accessor :nganhdaotao
    def initialize ten, tuoi, gioitinh, diachi, nganhdaotao
        super(ten, tuoi, gioitinh, diachi, nganhdaotao)
        @nganhdaotao = nganh
    end
    def display
        super()
        puts("Nganh dao tao: #@nganhdaotao")
    end
end
#Tạo lớp NhanVien kế thừa từ can bo
class NhanVien < CanBo
    #Cấp nhan vien có thuộc tính riêng: Công việc
    attr_accessor :congviec226
    def initialize ten226, tuoi226, gioitinh226, diachi226, congviec226
        super(ten226, tuoi226, gioitinh226, diachi226, congviec226)
        @congviec226 = cv226
    end
    def display
        super()
        puts("Cong viec la: #@congviec226")
    end
end
#Xây dựng lớp QLCB(quản lý cán bộ) 
class QLCB 
   
    #Thêm mới cán bộ
    def canbo_adding
        puts 'Ten:'
        ten226 = gets.chomp.to_s
      
        puts 'Tuoi:'
        tuoi226 = gets.chomp.to_s
      
        puts 'Gioi tinh :'
        gioitinh226 = gets.chomp.to_s
      
        puts 'Dia chi :'
        diachi226 = gets.chomp.to_s
      
        new_canbo = CanBo.new(ten226, tuoi226, gioitinh226, diachi226)
      
        $canbo_array.push(new_canbo.to_hash)
        puts "Da them nhan vien moi thanh cong. Bam ENTER de tiep tuc"
        gets.chomp
      end
    #Tìm kiếm theo họ tên
    def search
        
    end
    #Hiện thị thông tin về danh sách cán bộ
    def show
        
    end
    #Thoát khỏi chương trình
end