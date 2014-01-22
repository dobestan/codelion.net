def is_palindrome input_str
  str = input_str.downcase
  str = str.delete " "
  0.upto(str.length - 1) do |i|
    if str[i] != str[- (i + 1)]
      return false
    end
  end
  return true
end

print "Input word or sentence : "
puts "#{is_palindrome gets.chomp}"
