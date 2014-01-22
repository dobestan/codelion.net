def sum_digits input
  #여러 숫자를 한번에 받을 수 있나?
  digits = input.split(" ").map { |s| s.to_i} #map 뒤가 무슨 의미?
  sum = 0
  digits.each do |digit|
    sum += digit
  end
  puts sum
end

sum_digits gets.chomp
