def print_avg arr2
  arr2.each do |arr1|
    tmp_sum = 0
    arr1.each do |x|
      tmp_sum += x.to_f
    end
    puts ( tmp_sum / arr1.length )
  end
end

input_arr = [
  [1,2,3,4,5,6,7],
  [2,1,5,6,3,7,8,4,2],
  [2,1,4,2,5,6,3,2],
  [1,2,6,2,1,6,3,3],
  [1,5,2,2,7,2,5,0,1,2,4,8,8]
]
print_avg input_arr
