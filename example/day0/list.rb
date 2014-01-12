arr = ["dobestan", "21", "dobestan@naver.com"]

arr.each_with_index do |info, i|
  puts "my #{i+1} : #{info}"
end
