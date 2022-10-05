require_relative 'Document.rb'
class Newspaper < Document
    #Các báo cần quản lý thêm: Ngày phát hành.
    attr_accessor :dayIssue_226
    def initialize(id_226, nxb_226, number_226, dayIssue_226)
        @dayIssue_226 = dayIssue_226
    end
    def to_s
        return "The Newspaper: #{id_226} |#{nxb_226} |#{number_226} |#{dayIssue_226}"
    end
end