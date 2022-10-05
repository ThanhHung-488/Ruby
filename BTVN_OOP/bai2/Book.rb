require_relative 'Document.rb'
class Book < Document
    #Các loại sách cần quản lý thêm các thuộc tính: tên tác giả, số trang.
    attr_accessor :author_226, :numerPage_226
    def initialize(id_226, nxb_226, number_226, author_226, numerPage_226)
        @author_226 = author_226
        @numerPage_226 = numerPage_226
    end
    def to_s
        return "The Book: #{id_226} |#{nxb_226} |#{number_226} |#{author_226} |#{numerPage_226}"
    end
end