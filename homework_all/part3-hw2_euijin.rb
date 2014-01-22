def pelindrome word
  word == word.reverse? true : false
/  if word == word.reverse
    puts "true"
  else
    puts "false"
  end/
end

pelindrome gets.chomp


#  array = word.split('')
#  len = array.length
#  cnt = 0
#  1.upto(len) |num| do 
#    if array[num-1] != array[len-num]
#     cnt += 1
#     p cnt
#    end
#  end  #여기서 뭔가 문제가 있다.
#  
#  if cnt > 0
#    puts "false"
#  else
#    puts "true"
#  end
#end

#pelindrome gets.chomp
