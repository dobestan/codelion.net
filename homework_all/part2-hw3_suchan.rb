#implementation
def get_average(list)
  sum = 0.0
  list.each { |x| sum += x }
  return sum/list.size
end

def get_averages_from_2D_list(lists)
  lists.each { |list| puts get_average(list)}
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
