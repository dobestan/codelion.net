#implementation
#최소단위로 함수 분리하기
def get_result(num_1, num_2)

  if num_1 < 2 or num_2 < 2
    puts "ERROR : parameter is less than 2"
  else
    undivisible_list = []
    num1_undivisible_list = get_undivisible_list(num_1)
    num2_undivisible_list = get_undivisible_list(num_2)
    num1_undivisible_list.each do |x|
      num2_undivisible_list.each do |y|
        undivisible_list << x if x==y
      end
    end
  end

  return undivisible_list
end

def get_undivisible_list(num)
  undivisible_list = [] 
  for i in 1..num
    undivisible_list << i if num%i!=0
  end
  return undivisible_list
end

def get_user_input
  print "Enter a positive two integer : "
  user_input = gets.chomp.split(" ")
  user_input.each_with_index do |x, i| 
    temp = x.to_i
    user_input[i] = temp
  end
  
  return user_input.sort
end


#execute
user_input = get_user_input()
puts get_result(user_input[0], user_input[1])
