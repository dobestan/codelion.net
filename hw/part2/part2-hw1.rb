#implementation
def easy_parentheses(input)
  open_parentheses = "("
  close_parentheses = ")"
  open_parentheses_count = input.count(open_parentheses) 
  close_parentheses_count = input.count(close_parentheses)

  puts "Correct!" if open_parentheses_count == close_parentheses_count
  puts "Not Correct!" if open_parentheses_count != close_parentheses_count
end

def get_user_input
  print "Type Parentheses : "
  return gets.chomp
end

#execute
easy_parentheses(get_user_input)
