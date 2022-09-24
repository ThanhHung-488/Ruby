#Tạo lớp Human (name, hair, weight, height, age, phone, email, nation)
class Human
    attr_accessor :name, :hair, :weight, :height, :age, :phone, :email, :nation
    def initialize name, hair, weight, height, age, phone, email, nation
        @name = name
        @hair = hair
        @weight = weight
        @height = height
        @age = age
        @phone = phone
        @email = email
        @nation = nation
    end

    def display 
        puts "Ten: #{@name}"
        puts "Mau Toc: #{@hair}"
        puts "Can nang: #{@weight}"
        puts "Chieu cao: #{@height}"
        puts "Tuoi: #{@age}"
        puts "SDT: #{@phone}"
        puts "Email: #{@email}"
        puts "Dan toc: #{@nation}"
    end
end
#Tạo lớp Student thừa kế từ Human có các thuộc tính điểm và tính ra điểm trung bình của sv
class Student < Human
    attr_accessor :grade1, :grade2, :grade3
    def initialize name, hair, weight, height, age, phone, email, nation,grade1,grade2,grade3
        super(name, hair, weight, height, age, phone, email, nation)
        @grade1 = grade1
        @grade2 = grade2
        @grade3 = grade3
    end
    def diemTrungBinh
        @tb = (@grade1 + @grade2 + @grade3) / 3.to_f
    end 
    def display
        super()
        puts ("Grade1: #{@grade1}")
        puts ("Grade2: #{@grade2}")
        puts ("Grade3: #{@grade3}")
    end
    def sapxep

    end
end

#Tạo mới các đối tượng Student, bỏ vào một danh sách
student = Student.new("Thanh Hung","Xanh",58,170,18,123123,"abc@gmail.com","Kinh",8,9,8)
student1 = Student.new("Nguyen Thi Thanh Hung","hong",60,170,16,123223,"ab12c@gmail.com","Kinh",9,4,6.7)
student2 = Student.new("Hung","Xanh",65,160,16,125523,"ab112c@gmail.com","Kinh",7,3,9)

#Sắp xếp ds theo thứ tự điểm trung bình của sv giảm dần
puts "danh sach luc chua sap xep la: "
puts student.display
puts "Diem trung binh la: #{student.diemTrungBinh}"
puts student1.display
puts "Diem trung binh la: #{student1.diemTrungBinh}"
puts student2.display
puts "Diem trung binh la: #{student2.diemTrungBinh}"
st = [student,student1,student2]
st = st.sort_by{ |a| [a.diemTrungBinh]}

#In ra màn hình danh sách sv chưa sắp xếp và đã sắp xếp
puts "Danh sach khi da sap xep la: "
puts "#{st}"