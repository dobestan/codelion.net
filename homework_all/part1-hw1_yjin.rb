puts "enter a positive number : "
num = gets.chomp.to_i

if num <= 0 
  ans = "ERROR : input is not positive"
elsif
  ans = "#{num} is a prime number"

  2.upto(num-1) do |i|
    if num % i == 0
      ans = "#{num} is Not a prime number"
    end
  end
end
     
puts "#{ans}"    
