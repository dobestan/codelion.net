def par_checker input
  arr = input.split(%r{\s*})
  if arr.length % 2 == 0 && arr.sort[arr.length / 2 - 1] = arr.sort[arr.length / 2] && arr.sort[0] != arr.sort[arr.length - 1]
    puts "Correct!"
  else 
    puts "Not Correct!"
  end
end

print "Type Parentheses : "
par_checker gets.chomp
