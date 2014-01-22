def check_parentheses input_str
  if input_str.delete("(").length == input_str.delete(")").length
    puts "\n Correct!"
  else
    puts "\n Not Correct!"
  end
end

print "Type Parenthese :"
check_parentheses gets.chomp
