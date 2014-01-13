#implementation
def hard_parentheses(input)
  is_valid = true
  open_parentheses = "("
  close_parentheses = ")"

  open_parentheses_count = input.count(open_parentheses) 
  close_parentheses_count = input.count(close_parentheses)

  current_open_parentheses_count = 0
  current_close_parentheses_count = 0

  input_list = input.split("")

  #count is equal, but have to check order and current count
  #check easy_parentheses_check
  if open_parentheses_count != close_parentheses_count
    is_valid = false

  #check hard_parentheses_check
  else
    input_list.each do |parantheses|
      current_open_parentheses_count += 1 if parantheses == open_parentheses
      current_close_parentheses_count += 1 if parantheses == close_parentheses

      is_valid = false if current_close_parentheses_count > current_open_parentheses_count 
    end
  end

  puts "Correct!" if is_valid
  puts "Not Correct!" if !is_valid
end

def get_user_input
  print "Type Parentheses : "
  return gets.chomp
end

#execute
hard_parentheses(get_user_input)
