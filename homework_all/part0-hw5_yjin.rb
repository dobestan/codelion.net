def get_data height, weight
  stdweight = (height.to_i - 100)*0.9
  bimando = (weight.to_i/stdweight)*100
  status = ""
  if bimando < 80
    status = "저체중"
  elsif 80 <= bimando && bimando < 90
    status = "경한저체중"
  elsif 90 <= bimando && bimando < 110
    status = "정상체중"
  elsif 110 <= bimando && bimando < 120
    status = "과체중"
  elsif 120 <= bimando && bimando < 130
    status = "경도비만"
  elsif 130 <= bimando && bimando < 150
    status = "중증도비만"
  elsif 150 <= bimando && bimando < 200
    status = "고도비만"
  else
    status = "위험한 비만"
  end

  result = {"stdweight" => stdweight, "bimando" => bimando, "status" => status }
end

man = Array.new

1.upto(5) do |x|
  print "#{x}'s height (cm) : "
  height = gets.chomp.to_i
  print "\n #{x}'s weight (kg) : "
  weight = gets.chomp.to_i
  data_arr = get_data height, weight
  temp = Hash.new
  temp["height"] = height
  temp["weight"] = weight
  temp["stdweight"] = data_arr["stdweight"]
  temp["bimando"] = data_arr["bimando"]
  temp["status"] = data_arr["status"]

  man << temp
end

man.each_with_index do |x, index|
  puts ""
  puts "사람 #{index}"
  puts "키 : #{x["height"]} cm"
  puts "몸무게 : #{x["weight"]} kg"
  puts "표준체중 : #{x["stdweight"]} kg"
  puts "비만도 : #{x["bimando"]} %"
  puts "상태 : #{x["status"]}"
  puts ""
end
