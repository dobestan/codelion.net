puts "현재 신장을 입력하시오."
height = gets.chomp.to_i
puts "현재 체중을 입력하시오."
weight = gets.chomp.to_i

r_weight = ( height - 100 ) * 0.9
obesity = weight / r_weight * 100

#C의 case가 ruby에도 있나?


if obesity < 80
  puts "저체중"
elsif obesity<90
  puts "경한저체중"
elsif obesity<110
  puts "정상체중"
elsif obesity<120
  puts "과체중"
elsif obesity<130
  puts "경도비만"
elsif obesity<150
  puts "중등도비만"
elsif obesity<200
  puts "고도비만"
else
  puts "위험한비만"
end

