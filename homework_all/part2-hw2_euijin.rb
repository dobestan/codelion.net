def par_checker input
  cnt = 0
  input.each_char do |c|
    if c == "("
      cnt += 1
    elsif c == ")"
      cnt -= 1
    end
    if cnt < 0
      break
    end
  end
  if cnt == 0
    puts "Correct"
  elsif cnt < 0
    puts "Not Correct"
  end
end

par_checker gets.chomp
