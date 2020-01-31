data = File.open('data.txt').readlines

clean_data = data.map do |line|
    line.chomp.split(' ')
end

print clean_data
puts

clean_data.each do |array_info|
    sum = 0
    array_info.each_with_index do |student_info, index|
        if  index.zero?
            print student_info + ' tiene un promedio de: '
        else
            sum += student_info.to_i
        end
    end
    average = sum/(array_info.length - 1).to_f
    print average.round(2)
    puts
end




