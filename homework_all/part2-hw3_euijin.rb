def array_average input_array
  sum = 0
  input_array.each do |i|
    sum += i
  end
  avg = sum / input_array.length.to_f
end

some_array = [ 
  [1, 2, 3, 4, 5, 6, 7], 
  [2, 1, 5, 6, 3, 7, 8, 4, 2], 
  [2, 1, 4, 2, 5, 6, 3, 2], 
  [1, 2, 6, 2, 1, 6, 3, 3], 
  [1, 5, 2, 2, 7, 2, 5, 0, 1, 2, 4, 8, 8]
]

some_array.each do |j|
  puts array_average j 
end

