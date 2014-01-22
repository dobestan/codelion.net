
  #여기서부터 자유롭게 작성해 주세요

def sigma(n) 
#여기를 작성해주세요
 cnt=0
 1.upto(n) do |num|
   cnt += num
 end
 cnt
end


def evensigma n
    #여기를 작성해주세요
    
    cnt = 0
    1.upto(n) do |num|
      if num % 2 == 0
        cnt +=num
      end
    end
    cnt
end

puts %(짝수만의 합을 구하려면 "짝", 아니면 "전부"를 입력하시오.)
op = gets.chomp
puts %(몇까지 더할까요?)
num = gets.chomp.to_i

if op == "짝"
  puts evensigma num
end
if op == "전부"
  puts sigma num
end
