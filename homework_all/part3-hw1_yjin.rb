def find_kth_number input_arr, input_k
  ordered_arr = input_arr.sort
  return ordered_arr[input_k - 1]
end

kth = find_kth_number [2,3,4,5,6,7,8],3
puts kth

kth = find_kth_number [345,234,756,23,64,123,214],2
puts kth
