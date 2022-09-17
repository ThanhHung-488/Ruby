so = 0
sum = 0
for i in 0..100 do
    if i%5==0
        so += i
        sum += so
    end
    puts "#{sum}"
end