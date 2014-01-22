def evensigma n
    #여기를 작성해주세요
    
    cnt = 0
    1.upto(n) do |num|
      if num%2 == 0
        cnt +=num
      end
    end
    cnt
end


puts evensigma gets.chomp.to_i
