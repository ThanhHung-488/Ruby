require_relative 'ManagerDocument.rb'
require_relative 'Book.rb'
require_relative 'Journal.rb'
require_relative 'Newspaper.rb'
class Main
    manager_226= ManagerDocument.new
    while true do
        puts "Application Manager Document"
        puts "Enter 1: To insert document"
        puts "Enter 2: To search document by category: "
        puts "Enter 3: To show information documents"
        puts "Enter 4: To remove document by id"
        puts "Enter 5: To exit:"
        option_226 = gets.chomp.to_i
        case option_226
            #Thêm mới tài liệu:Sách,tạp chí,báo 
            when 1
                puts "Enter a: to insert Book"
                puts "Enter b: to insert Newspaper"
                puts "Enter c: to insert Journal"
                type_226 = gets.chomp.to_s
                if type_226 == "a" || type_226 == "b" || type_226 == "c"
                    puts "Enter ID"
                    id_226 = gets.chomp.to_s
                    puts "Enter nha xuat ban:"
                    nxb_226 = gets.chomp.to_s
                    puts "Enter number: "
                    number_226 = gets.chomp.to_s
                end
                case type_226
                    when "a" 
                        puts "Enter author: "
                        author_226 = gets.chomp.to_s
                        puts "Enter page number: "
                        numerPage_226 = gets.chomp.to_s
                        book_226 = Book.new(id_226,nxb_226,number_226,author_226,numerPage_226)
                        manager_226.addDocument(book_226)
                        puts book_226.to_s
                    when "b" 
                        puts "Enter Day issue: "
                        dayIssue_226 = gets.chomp.to_s
                        newspaper_226 = Newspaper.new(id_226,nxb_226,number_226,dayIssue_226)
                        manager_226.addDocument(newspaper_226)
                        puts newspaper_226.to_s
                    when "c" 
                        puts "Enter issue number: "
                        issueNumber_226 = gets.chomp.to_s
                        puts "Enter issue month: "
                        monthIssue_226 = gets.chomp.to_s
                        journal_226 = Book.new(id_226,nxb_226,number_226,author_226,issueNumber_226,monthIssue_226)
                        manager_226.addDocument(journal_226)
                        puts journal_226.to_s
                    else
                        exit
                end 
            # Tìm kiếm tài liệu theo loại: Sách, tạp chí, báo.
            when 2
                puts "Enter 1: to insert Book"
                puts "Enter 2: to insert Newspaper"
                puts "Enter 3: to insert Journal"
                find_226 = gets.chomp.to_s
                puts "Enter Id to search:"
                id_226 = gets.chomp.to_s
                manager_226.findById(id_226)
            #Hiển thị thông tin về tài liệu 
            when 3
                manager_226.showListInforDocument()
            when 4
                puts "Enter id to remove: "
                
            #Thoát khỏi chương trình
            else
                exit
            end
        end
    end