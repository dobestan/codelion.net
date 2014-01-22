#encoding=utf-8
puts "현재 키가 몇 cm 인가요?"
height = gets.chomp.to_i
puts "현재 몸무게가 몇 kg 인가요?"
weight = gets.chomp.to_i

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
real_avg_weight = avg_weight(height)
real_obesity = obesity(weight,real_avg_weight)
real_state = prov_obesity (real_obesity)

puts "당신의 키에 알맞는 표준체중 : #{ real_avg_weight }"
puts "당신의 비만도 : #{ real_obesity }"
puts "당신의 상태 : #{ real_state }"
