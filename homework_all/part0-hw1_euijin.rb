def sigma(n)
   #여기를 작성해주세요
   cnt=0
   1.upto(n) do |num|
     cnt += num
   end
   cnt
 end

   val = gets.chomp.to_i
   puts sigma(val)
