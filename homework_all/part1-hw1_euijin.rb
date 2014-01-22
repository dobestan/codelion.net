def prime n
  if n <= 0
    puts "ERROR : input is not positive"
  else
    cnt = 0
    1.upto(n) do |num|
      if n % num == 0
        cnt +=1
      end
    end
    if cnt == 2
      puts "#{n} is a prime number."
    else
      puts "#{n} is NOT prime number."
    end
  end
end

print "enter a positive integer : "
prime gets.chomp.to_i
    
