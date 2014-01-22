def string_match names, char
  names.each do |word|
    if word[0] == char
      puts word
    end
  end
end

puts "Please input words, seperate the words with blank for multiple inputs"
names = gets.chomp.split(" ")
puts "Please input a character that will identify the words"
char = gets.chomp

string_match names, char

