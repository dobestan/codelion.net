#implementation
def sum_digit(input)
  #input must be a string
  #use String.split method to change str into integer list
  sum = 0
  input_list = input.split(" ")
  input_list.each {|i| sum += i.to_i}
  puts sum
end

def get_user_input()
  print "enter a positive integers : "
  return gets.chomp
end

#execute
sum_digit(get_user_input)
