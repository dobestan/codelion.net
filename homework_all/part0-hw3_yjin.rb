def sigma(n)
  num = 0
  1.upto(n) do |i|
    num += i
  end
  return num
end

def evensigma(n)
  num = 0
  1.upto(n) do |i|
    num += i if i % 2 == 0
  end
  return num
end

puts "what do you want?"
puts "sigma or evensigma"
ans = gets.chomp

sleep(1)
puts "ok, you chose #{ans}, give me a number"
number = gets.chomp.to_i

if ans == "sigma" 
  puts sigma number
elsif ans == "evensigma"
  puts evensigma number
else
  puts "foooooo"
end
