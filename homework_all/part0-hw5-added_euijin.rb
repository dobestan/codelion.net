
def state height, weight
  r_weight = ( height - 100 ) * 0.9
  obesity = weight / r_weight * 100
  if obesity < 80
    "저체중"
  elsif obesity<90
    "경한저체중"
  elsif obesity<110
    "정상체중"
  elsif obesity<120
    "과체중"
  elsif obesity<130
    "경도비만"
  elsif obesity<150
    "중등도비만"
  elsif obesity<200
    "고도비만"
  else
    "위험한비만"
  end
end

man = Array.new

1.upto(5) do |x|

  print "#{x}'s height (cm) : "
  height = gets.chomp.to_i
  print "#{x}'s weight (kg) : "
  weight = gets.chomp.to_i

  temp = Hash.new
  temp[:height] = height
  temp[:weight] = weight
  temp[:stdweight] = ( height - 100 ) * 0.9 #표준체중을 넣어주세요 (Integer)
  temp[:bimando] = weight / (( height - 100 ) * 0.9) * 100 #비만도를 넣어주세요 (Integer)
  temp[:state] = state height, weight  # 상태를 넣어주세요 (String)
    man << temp

end

p man
i = 1 
man.each do |x|
  puts "사람 #{i}"
  i += 1
  puts "키 : #{x[:height]} cm"
  puts "몸무게 : #{x[:weight]} kg "
  puts "표준체중 : #{x[:stdweight]} kg "
  puts "비만도 : #{x[:bimando]} %"
  puts "상태 : #{x[:state]}"
end
