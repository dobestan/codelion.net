#1번과 2번 문제를 활용하여 사용자의 입력을 받아 해당 연산을 할 수 있도록 메뉴판을 만들고 적절히 if 문을 구성해 보세요.
def sigma(n)
    # 1번 숙제에서 만든 소스
    def sigma(n)
    #여기를 작성해주세요
          n*(n+1)/2
    end
    return sigma(n)
        
end

def evensigma(n)
    # 2번 숙제에서 만든 소스
    def evensigma(n)
    #여기를 작성해주세요
      sum = 0
      1.upto(n) do |i|
        if i%2 == 0
          sum = sum + i
        end
      end
      return sum
    end
    return evensigma (n)
    end

#여기서부터
puts "메뉴 입니다. 드실 메뉴를 골라주세요."
puts "salad"
puts "chicken"
puts "hamburger"
puts "어떤 것을 드시겠습니까?"
order1 = gets.chomp  
puts "몇 개 드시겠습니까?"
order2 = gets.chomp.to_i

if order1 == "salad"
  puts "가격은 #{sigma(order2)}"
elsif order1 == "chicken"
  puts "가격은 #{sigma(order2)}"
else 
  puts "가격은 #{evensigma(order2)}"
end

