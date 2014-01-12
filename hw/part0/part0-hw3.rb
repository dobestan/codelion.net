def sigma(n)
  sum = 0
  cnt = 1
  1.upto(n) do
     sum += cnt
     cnt += 1
  end
  return sum
end

def evensigma(n)
  sum = 0
  cnt = 1
  1.upto(n) do
     sum += cnt if cnt%2 == 0
     cnt += 1
  end
  return sum
end

def sigma_with_menu()
  puts "-" * 15
  puts "1. sigma"
  puts "2. evensigma"
  puts "3. exit"
  puts "-" * 15

  while true
    print "Select Menu : "
    user_select_menu = gets.chomp.to_i
    
    if user_select_menu==1
      print "Enter Number to Calculate :"
      user_input = gets.chomp.to_i
      puts "the answer is #{sigma(user_input)}"
    elsif user_select_menu==2
      print "Enter Number to Calculate :"
      user_input = gets.chomp.to_i
      puts "the answer is #{evensigma(user_input)}"
    elsif user_select_menu==3
      puts "Exit Program..."
      return 0;
    else 
      puts "ERROR : OUT OF RANGE"
    end
    puts "" 
  end
end

sigma_with_menu()

