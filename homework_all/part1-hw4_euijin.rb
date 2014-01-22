def finder digit1, digit2
  if digit1 < 2 || digit2 < 2 
    puts "error: a parameter is less than 2"
  else
    min = [digit1, digit2].min
    dividers = []
    1.upto(min) do |i|
      if digit1 % i != 0 && digit2 % i != 0
        dividers << i
      end
    end
  end
  dividers.each do |x|
    print "#{x} "
  end
 
end

finder gets.chomp.to_i, gets.chomp.to_i
