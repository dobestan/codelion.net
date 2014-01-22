def prove input
  count1 = 0
  count2 = 0
  input.each do |x|
    if x == "("
      count1 += 1
    else
      count2 += 1
    end
  end
  if count1 == count2
    puts "Correct!"
  else
    puts "Not Correct!"
  end
end
user_input = gets.chomp
input_array = user_input.split("")
prove input_array

