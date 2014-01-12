text = %(William Henry "Bill" Gates III (born October 28, 1955)[2] is an American business magnate, investor, programmer,[3] inventor[4] and philanthropist. Gates is the former chief executive and current chairman of Microsoft, the world’s largest personal-computer software company, which he co-founded with Paul Allen.
         He is consistently ranked in the Forbes list of the world's wealthiest people[5] and was the wealthiest overall from 1995 to 2009—excluding 2008, when he was ranked third;[6] in 2011 he was the wealthiest American and the world's second wealthiest person.[7][8] According to the Bloomberg Billionaires List, Gates is the world's richest person in 2013, a position that he last held on the list in 2007.[1]
         During his career at Microsoft, Gates held the positions of CEO and chief software architect, and remains the largest individual shareholder, with 6.4 percent of the common stock.[a] He has also authored and co-authored several books.
         Gates is one of the best-known entrepreneurs of the personal computer revolution. Gates has been criticized for his business tactics, which have been considered anti-competitive, an opinion which has in some cases been upheld by the courts.[11][12] In the later stages of his career, Gates has pursued a number of philanthropic endeavors, donating large amounts of money to various charitable organizations and scientific research programs through the Bill & Melinda Gates Foundation, established in 2000.[13]
         Gates stepped down as chief executive officer of Microsoft in January 2000. He remained as chairman and created the position of chief software architect for himself. In June 2006, Gates announced that he would be transitioning from full-time work at Microsoft to part-time work, and full-time work at the Bill & Melinda Gates Foundation. He gradually transferred his duties to Ray Ozzie, chief software architect, and Craig Mundie, chief research and strategy officer. Gates's last full-time day at Microsoft was June 27, 2008. He remains at Microsoft as chairman.)

def find_word_in_text text, word
  text_list = text.split(" ")
  cnt = 0
  text_list.each do |w|
      cnt += 1 if word == w
  end
  return cnt
end


puts findWordInText text,"of"
