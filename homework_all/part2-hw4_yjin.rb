def order_by_avg arr2
  ordered_arr = Array.new

  arr2.each_with_index do |arr1,i|
    tmp_sum = 0
    arr1.each do |x|
      tmp_sum += x.to_f
    end
    # arr[i][0]에 평균값을 입력
    arr2[i].unshift ( tmp_sum / arr1.length )
  end

  # 평균 값으로 정렬
  ordered_arr = arr2.sort_by { |tmp_arr1| (tmp_arr1[0] * 100).to_i }
  
  # arr2[i][0]에 저장한 평균값 삭제하고 출력
  ordered_arr.each do |arr1|
    arr1.delete_at(0)
    p arr1 
  end
end

input_arr = [
  [1,2,3,4,5,6,7],
  [2,1,5,6,3,7,8,4,2],
  [2,1,4,2,5,6,3,2],
  [1,2,6,2,1,6,3,3],
  [1,5,2,2,7,2,5,0,1,2,4,8,8]
]
order_by_avg input_arr

