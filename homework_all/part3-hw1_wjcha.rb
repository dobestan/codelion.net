def find_kth_number(input_array, input_k)
    # 여러분이 짜야 할 내용은 여기.
    input_array.sort! {|a,b| b <=> a}
    return input_array[input_k - 1]
end

kth = find_kth_number([2, 3, 4, 5, 6, 7, 8], 3)
puts kth
kth = find_kth_number([345, 234, 756, 23, 64, 123, 214], 2)
puts kth
