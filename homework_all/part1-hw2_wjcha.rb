def sum_digits (input)
  input_array = input.split(" ")
  sum = 0
  input_array.each do |x|
    x= x.to_i
    sum = sum + x    
  end
  puts sum
end
print "enter a positive integer: "
user_input = gets.chomp
sum_digits (user_input)
