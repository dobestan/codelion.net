def sum_digits input
  sum = 0
  num_arr = input.split(" ")
  num_arr.each do |x|
    sum += x.to_i
  end
  puts "#{sum}"
end

print "enter a positive integer:"
sum_digits gets.chomp
