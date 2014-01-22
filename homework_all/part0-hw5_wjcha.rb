#encoding=utf-8

def avg_weight(x)
  return (x - 100) * 0.9
end
def obesity (x,y)
  return x / y * 100
end
def prov_obesity (x)
  if x >= 200
    return "위험한 비만"
  elsif x >= 150 && x < 200
    return "고도 비만"
  elsif x >= 130 && x < 150
    return "중증도 비만"
  elsif x >= 120 && x < 130
    return "경도 비만"
  elsif x >= 110 && x < 120
    return "과체중"
  elsif x >= 90 && x < 110
    return "정상체중"
  elsif x >= 80 && x < 90
    return "경한 저체중"
  else
    return "저체중"
  end
end

man = Array.new

1.upto(5) do |x|

  print "#{x}'s height (cm) : "
  height = gets.chomp.to_i
  print "#{x}'s weight (kg) : "
  weight = gets.chomp.to_i

  real_avg_weight = avg_weight ( height )
  real_obesity = obesity(weight,real_avg_weight)
  real_state = prov_obesity (real_obesity)

  temp = Hash.new
  temp[:height] = height
  temp[:weight] = weight
  temp[:stdweight] = real_avg_weight  #표준체중을 넣어주세요 (Integer)
  temp[:bimando] = real_obesity  #비만도를 넣어주세요 (Integer)
  temp[:state] = real_state  # 상태를 넣어주세요 (String)

  man << temp

end

puts man #추가 문제에서 이 줄을 삭제하고 작성해주세요
