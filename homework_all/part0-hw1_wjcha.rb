#1 부터 (사용자가 입력한) n 까지 모두 더하는 함수를 만드시오
def sigma(n)
     #여기를 작성해주세요
     n*(n+1)/2
end

val = gets.chomp.to_i
puts sigma(val)
