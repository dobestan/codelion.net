def string_match( names, char )
  word_cnt = 0
  names.each do |word|
    alphabet_cnt = 0
    
    if word.first == char
      0.upto(word.length - 1) do |c|
        if word[c] == char
          alphabet_cnt += 1
        end
      end
      puts "#{word} #{alphabet_cnt}"
      word_cnt += 1
    end
  end
  if word_cnt == 0
    puts "no matches"
  end
end

string_match(["anteater","elephant","aardvark","dog","antelope"],"a")
puts "+++++"
string_match(["anteater","elephant","aardvark","dog","antelope"],"t")
