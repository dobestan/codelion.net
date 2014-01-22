def prove val1, val2
  array1 = Array.new
  for i in 1..val1
    array1[i-1] = i
  end
  array_val1 = Array.new  
  if val1 < 2 || val2 <2
    puts "error: a parameter is less than 2"
  else
    for i in 1..val1
      if val1 % i == 0
        array_val1.push(i)
      end
    end
    for i in 1..val2
      if val2 % i == 0
        array_val1.push(i)
      end
    end
    for i in 0..val1-1
      array_val1.each do |x|
        if array1[i] == x
          array1[i] = nil          
        end
      end
    end 
    array1.each do |x|
      if x != nil
      print "#{x},"
      end
    end    
  end
end

user_input = gets.chomp
input_array = user_input.split(" ")
input_array[0] = input_array[0].to_i
input_array[1] = input_array[1].to_i
input_array.sort!
val1 = input_array[0]
val2 = input_array[1]
prove val1, val2
