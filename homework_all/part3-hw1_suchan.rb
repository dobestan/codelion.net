#implementation
def find_kth_number(input_array, k)
  input_array = input_array.sort {|x,y| y<=>x}
  return input_array[k-1]
end

#execute
kth = find_kth_number([2, 3, 4, 5, 6, 7, 8], 3)
puts kth
kth = find_kth_number([345, 234, 756, 23, 64, 123, 214], 2)
puts kth
