#encoding=utf-8
# implementation of BMI_checker
def BMI_checker(height, weight)

 standard_weight = get_standard_weight(height)
 obesity_rate = get_obesity_rate(height, weight)
 state = get_state(obesity_rate)

 puts "-"*30
 puts "Standard Weight(kg) : #{standard_weight}"
 puts "Obesity Rate(%) : #{obesity_rate}"
 puts "State : #{state}"
 puts "-"*30
end


def get_height
  #get user's height from prompt

  print "Enter Height(cm) : "
  user_input_height = gets.chomp.to_i

  return user_input_height
end


def get_weight
  #get user's weight from prompt

  print "Enter Weight(kg) : "
  user_input_weight = gets.chomp.to_i

  return user_input_weight
end


def get_standard_weight(height)
  #get user's height as argument
  #and return "Standard Weight(kg)"

  return (height - 100) * 0.9 
end

def get_obesity_rate(height, weight)
  #get user's height and weight as argument
  #and return "Obesity Rate(%)"

  return (weight / get_standard_weight(height)) * 100 
end

def get_state(obesity_rate)
  state = case obesity_rate
          when 0...80 then "저체중"
          when 80...90 then "경한저체중"
          when 90...110 then "정상체중"
          when 110...120 then "과체중"
          when 120...130 then "경도비만"
          when 130...150 then "중증도비만"
          when 150...200 then "고도비만"
          else "위험한 비만" 
          end
  return state
end

man = Array.new
1.upto(5) do |x|
  print "Enter #{x}'s Height(cm) : "
  height = gets.chomp.to_i

  print "Enter #{x}'s Weight(kg) : "
  weight = gets.chomp.to_i

  temp = Hash.new
  temp[:height] = height
  temp[:weight] = weight
  temp[:standard_weight] = get_standard_weight(height)
  temp[:obesity_rate] = get_obesity_rate(height, weight)
  temp[:state] = get_state(temp[:obesity_rate])

  man << temp
end

puts man
