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

arr_w_avg = Array.new

1.upto(5) do |x|
  temp = Array.new
  temp[1] = some_array[x-1]
  temp[0] = array_average some_array[x-1]
  arr_w_avg << temp
end

1.upto(5) do |j|
  p arr_w_avg.sort_by{|k|k[0]}[j-1][1]
end

