#1 부터 n 까지 짝수만 모두 더하는 함수를 만드시오
def evensigma(n)
    #여기를 작성해주세요
    sum = 0
    1.upto(n) do |i|
      if i%2 ==0
        sum = sum + i
      end
    end
    return sum
end

puts evensigma(gets.chomp.to_i)
