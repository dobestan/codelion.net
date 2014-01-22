#implementation
def get_average(list)
  sum = 0.0
  list.each { |x| sum += x }
  return sum/list.size
end

def get_averages_from_2D_list(lists)
  temp_list = []
  lists.each do |list|
    temp_list << [get_average(list), list]
  end
  temp_list = temp_list.sort {|x,y| x[0] <=> y[0] }
  temp_list.each {|x| print "#{x[1]} \n"}
end

#execute
some_array = [ 
  [1, 2, 3, 4, 5, 6, 7], 
  [2, 1, 5, 6, 3, 7, 8, 4, 2], 
  [2, 1, 4, 2, 5, 6, 3, 2], 
  [1, 2, 6, 2, 1, 6, 3, 3], 
  [1, 5, 2, 2, 7, 2, 5, 0, 1, 2, 4, 8, 8]
]
get_averages_from_2D_list(some_array)
