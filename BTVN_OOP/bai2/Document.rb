class Document
    #Mã tài liệu(Mã tài liệu là duy nhất), Tên nhà xuất bản, số bản phát hành.
    attr_accessor :id_226, :nxb_226, :number_226
    def initialize(id_226, nxb_226, number_226)
        @id_226 = id_226
        @nxb_226 = nxb_226
        @number_226 = number_226
    end
end