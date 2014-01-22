def sigma(n)
  sum = 0
  cnt = 1
  1.upto(n) do
     sum += cnt
     cnt += 1
  end
  return sum
end

val = gets.chomp.to_i
puts sigma(val)
