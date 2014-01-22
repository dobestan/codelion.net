def prove input
  input.each do |x|
    sum = 0
    x.each do |y|
      sum = sum + y
    end
    avg = sum.to_f / x.length.to_f
    puts avg
  end
end

some_array = [ 
  [1, 2, 3, 4, 5, 6, 7], 
  [2, 1, 5, 6, 3, 7, 8, 4, 2], 
  [2, 1, 4, 2, 5, 6, 3, 2], 
  [1, 2, 6, 2, 1, 6, 3, 3], 
  [1, 5, 2, 2, 7, 2, 5, 0, 1, 2, 4, 8, 8]
]

prove some_array
