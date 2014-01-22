def lasts input
  arr = input.split(" ")
  result_arr = Array.new
  output_str = ""
  n0 = arr[0].to_i
  n1 = arr[1].to_i
 
  2.upto(n0 - 1) do |i|
    if n0 % i != 0 || n1 % i != 0
      result_arr << i
    end
    if i == n1 - 1
      break
    end
  end
  
  result_arr.each do |n|
    output_str += ", #{n}"
  end
  output_str = output_str[2..-1]

  if n0 < 2 || n1 < 2
    output_str = "error: a parameter is less then 2"
  end

  return output_str
end

puts "enter two positive integers :"
puts lasts gets.chomp
  
