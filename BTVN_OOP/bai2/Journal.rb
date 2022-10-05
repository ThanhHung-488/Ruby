require_relative 'Document.rb'
class Journal < Document
    #Các tạp chí cần quản lý thêm: Số phát hành, tháng phát hành.
    attr_accessor :issueNumber_226, :monthIssue_226
    def initialize(id_226, nxb_226, number_226, issueNumber_226, monthIssue_226)
        @issueNumber_226 = issueNumber_226
        @monthIssue_226 = monthIssue_226
    end
    def to_s
        return "The Journal: #{id_226} |#{nxb_226} |#{number_226} |#{issueNumber_226} |#{monthIssue_226}"
    end
end