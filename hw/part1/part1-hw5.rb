def string_match(names, char)
  match_list = Hash.new 
  names.each do |name|
    match_list[name] = name.count(char) if name.chr == char
  end
  return match_list
end

#execute
puts string_match(["anteater","elephant","aardvark","dog","antelope"],"a")
puts string_match(["anteater","elephant","aardvark","dog","antelope"],"t")
