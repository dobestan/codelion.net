def prove input
  input2 = input.reverse
  if input == input2
    puts true
  else
    puts false
  end 
end
print "Input word or sentence : "
user_input = gets.chomp
input_array = user_input.split("")
input_array.delete(" ")
input_array.map!{|v| v.downcase}
prove input_array

