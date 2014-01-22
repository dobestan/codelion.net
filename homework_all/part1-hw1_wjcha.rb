def prime (x)
  is_prime = true
  if x > 1    
    for i in 2..x-1
      if x % i == 0
        is_prime = false
      end
    end
    if is_prime
        puts "#{x} is a prime number."
    else
        puts "#{x} is NOT a prime number."
    end
  elsif x == 1
    puts "#{x} is NOT a prime number."
  else
    puts "ERROR: input is not positive."
  end  
end
print "enter a positive integer:"
input = gets.chomp.to_i
prime (input)
