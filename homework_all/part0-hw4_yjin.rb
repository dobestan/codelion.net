puts "체중과 키를 입력해주세요 : "
ans = gets.chomp.split(" ")
weight = ans[0]
height = ans[1]

avg_weight = (height.to_i - 100)*0.9
fat_rate = (weight.to_i/avg_weight)*100
status = ""
if fat_rate < 80 
  status = "저체중"
elsif 80 <= fat_rate && fat_rate < 90
  status = "경한저체중"
elsif 90 <= fat_rate && fat_rate < 110
  status = "정상체중"
elsif 110 <= fat_rate && fat_rate < 120 
  status = "과체중"
elsif 120 <= fat_rate && fat_rate < 130
  status = "경도비만"
elsif 130 <= fat_rate && fat_rate < 150
  status = "중증도비만"
elsif 150 <= fat_rate && fat_rate < 200
  status = "고도비만"
else
  status = "위험한 비만"
end

puts "표준체중 : #{avg_weight} \n"
puts "비만도 : #{fat_rate} \n"
puts "상태 : #{status} \n"
