def box_check val1, val2, val3
  if val3 < (val1 + val2)
    puts true
  else
    puts false
  end
end
print "enter a positive three integer: "
user_input = gets.chomp
input_array = user_input.split(" ")

for i in 0..2
  input_array[i] = input_array[i].to_i
end
input_array.sort!

val1 = input_array[0]
val2 = input_array[1]
val3 = input_array[2]

box_check val1, val2, val3
