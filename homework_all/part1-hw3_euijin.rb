def box_check val1, val2, val3 
  if val1 + val2 > val3 && val2 + val3 > val1 && val1 + val3 > val2
    puts "true"
  else
    puts "false"
  end
end

input = gets.chomp
digits = input.split(" ").map { |s| s.to_i}

box_check digits[0], digits[1], digits[2]
