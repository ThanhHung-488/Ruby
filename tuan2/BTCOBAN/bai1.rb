# Nhập các số vào mảng, in ra số lớn nhất, nhỏ nhất, giá trị trung bình của mảng.
arr = [7,1,3,8,2]

print "min: ", arr.min, "\n"
print "max: ", arr.max, "\n"
print "avg: ", arr.reduce(:+).to_f / arr.length , "\n"