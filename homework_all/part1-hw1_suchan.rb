#implementation
def prime(num)
  is_prime = true 
  if num <= 0
    puts "ERROR : input is not positive."
    return -1
  elsif num == 1
    is_prime = false
  else
    2.upto(num-1) do |i|
      is_prime = false if num % i == 0
    end
  end

  puts "#{num} is a prime number" if is_prime
  puts "#{num} is NOT a prime number" if !is_prime
  return 0
end

def get_user_input
  print "enter a positive integer : "
  return gets.chomp.to_i
end

#execution
puts "must end with [Control + C]"

while (true)
  prime(get_user_input())
  puts ""
end
