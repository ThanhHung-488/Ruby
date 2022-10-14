#cộng trừ nhân chia hai phân số
class PhanSo
    attr_accessor :tuSo_226, :mauSo_226
    def initialize(tuSo_226, mauSo_226)
        @tuSo_226 = tuSo_226
        @mauSo_226 = mauSo_226
    end
    def USCLN(a_226, b_226)
        while (a_226 != b_226) do
            if a_226 > b_226
                a_226 -= b_226
            else
                b_226 -= a_226
            end
        end
        return a_226;
        
    end
    def toiGian()
        i_226 = USCLN(@tuSo_226,@mauSo_226)
        @tuSo_226 =@tuSo_226/i_226
        @mauSo_226 =@mauSo_226/i_226
    end
    def +(obj)
        ts_226 = @tuSo_226 * obj.mauSo_226 + obj.tuSo_226 * @mauSo_226
        ms_226 = @mauSo_226 * obj.mauSo_226
        phanPS = PhanSo.new(ts_226, ms_226)
        phanPS.toiGian
        return "Tong: #{phanPS.tuSo_226}/#{phanPS.mauSo_226}"
    end
    def -(obj)
        ts_226 = @tuSo_226 * obj.mauSo_226 - obj.tuSo_226 * @mauSo_226
        ms_226 = @mauSo_226 * obj.mauSo_226
        phanPS = PhanSo.new(ts_226, ms_226)
        phanPS.toiGian
        return "Hieu: #{phanPS.tuSo_226}/#{phanPS.mauSo_226}"
    end
    def *(obj)
        ts_226 = @tuSo_226 * obj.tuSo_226
        ms_226 = @mauSo_226 * obj.mauSo_226
        phanPS = PhanSo.new(ts_226, ms_226)
        phanPS.toiGian
        return "Tich: #{phanPS.tuSo_226}/#{phanPS.mauSo_226}"
    end
    def /(obj)
        ts_226 = @tuSo_226 * obj.mauSo_226
        ms_226 = @mauSo_226 * obj.tuSo_226
        phanPS = PhanSo.new(ts_226, ms_226)
        phanPS.toiGian
        return "Thuong: #{phanPS.tuSo_226}/#{phanPS.mauSo_226}"
    end

end
class Main
    ps1 = PhanSo.new(13,6)
    ps2 = PhanSo.new(12,7)

    puts ps1 + ps2
    puts ps1 - ps2
    puts ps1 * ps2
    puts ps1 / ps2
end