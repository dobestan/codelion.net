#implementation
def is_palindrome?(input_string)
  char_list = []
  input_string = input_string.split("")
  input_string.each do |c|
    char_list << c.downcase if c != " "
  end
  return char_list == char_list.reverse
end

def get_user_input
  print "Input word or sentence : "
  return gets.chomp
end

#execute
puts is_palindrome?(get_user_input)
