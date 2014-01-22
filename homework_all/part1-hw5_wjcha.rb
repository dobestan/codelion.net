def string_match( names, char )
  #여러분이 쓸 부분은 이 부분입니다.
  num = 0
  names.each do |x|
    array1 = x.split("")
    count = 0
    array1.each do |a|
      if a == char
        count += 1
      end
    end
    if array1[0] == char
      puts "#{x} #{count}"
      num += 1    
    end
  end
  if num == 0
    puts "no matches"
  end

end

string_match(["anteater","elephant","aardvark","dog","antelope"],"a")
puts "+++++"
string_match(["anteater","elephant","aardvark","dog","antelope"],"t")
