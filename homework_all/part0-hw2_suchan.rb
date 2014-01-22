def evensigma(n)
  sum = 0
  cnt = 1
  1.upto(n) do
     sum += cnt if cnt%2 == 0
     cnt += 1
  end
  return sum
end

val = gets.chomp.to_i
puts evensigma(val)
