def box_check input
  arr = input.split(" ")
  n0 = arr[0].to_i
  n1 = arr[1].to_i
  n2 = arr[2].to_i

  if n0 + n1 <= n2 || n1 + n2 <= n0 || n2 + n0 <= n1
    return false
  else
    return true
  end
end

print "enter three positive integers : "
puts "#{box_check(gets.chomp)}"
