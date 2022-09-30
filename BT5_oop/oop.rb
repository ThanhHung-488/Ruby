#Yêu cầu 1: Xây dựng các lớp CongNhan, KySu, NhanVien kế thừa từ lớp CanBo.
class CanBo
    #Họ tên, tuổi, giới tính(name, nữ, khác), địa chỉ.
    attr_accessor :ten, :tuoi, :gioitinh, :diachi
    def initialize ten, tuoi, gioitinh, diachi
        @ten = ten
        @tuoi = tuoi
        @gioitinh = gioitinh
        @diachi = diachi
    end
    def display 
        puts "Ten: #{@name}"
        puts "Tuoi: #{@tuoi}"
        puts "Gioi tinh: #{@gioitinh}"
        puts "Dia chi: #{@diachi}"
    end

end
 #Tạo lớp Công nhân kế thừa từ can bo
 class CongNhan < CanBo
    attr_accessor :bacdaotao
    def initialize ten, tuoi, gioitinh, diachi, bac1
        super(ten, tuoi, gioitinh, diachi, bacdaotao)
        @bacdaotao = bac
    end
    def display
        super()
        puts("Bac dao tao: #@bacdaotao")
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
    attr_accessor :congviec
    def initialize ten, tuoi, gioitinh, diachi, congviec
        super(ten, tuoi, gioitinh, diachi, congviec)
        @congviec = cv
    end
    def display
        super()
        puts("Cong viec la: #@congviec")
    end
end
#Xây dựng lớp QLCB(quản lý cán bộ) 
class QLCB 
   
    #Thêm mới cán bộ
    def canbo_adding
        puts 'Ten:'
        ten = gets.chomp.to_s
      
        puts 'Tuoi:'
        tuoi = gets.chomp.to_s
      
        puts 'Gioi tinh :'
        gioitinh = gets.chomp.to_s
      
        puts 'Dia chi :'
        diachi = gets.chomp.to_s
      
        new_canbo = CanBo.new(ten, tuoi, gioitinh, diachi)
      
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