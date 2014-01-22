def check_parentheses input_str
  char_arr = input_str.split("")
  cnt = 0
  check_order = true

  char_arr.each do |char|
    if char == "(" 
      cnt += 1 
    elsif char == ")" 
      cnt += -1 
    end
    if cnt < 0 
      check_order = false
    end
  end

  if cnt == 0 && check_order == true
    puts "Correct!"
  else
    puts "Not Correct!"
  end      
end

print "Type Parenthese :"
check_parentheses gets.chomp
