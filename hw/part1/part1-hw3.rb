#triangle validity checker
#implementation
def box_checker(val_1, val_2, val_3)
  is_valid = val_3 >= val_1 + val_2 ? false : true
  puts is_valid
end

def get_user_input()
  #will return sorted integer list
  #all element shoud be integer, not a string

  print "Enter a positive three integer : "
  user_input = gets.chomp.split(" ")

  user_input.each_with_index do |x, i|
  temp = x.to_i
  user_input[i] = temp
  end

  return user_input.sort
end

#execute
user_input = get_user_input()
box_checker(user_input[0], user_input[1], user_input[2])
