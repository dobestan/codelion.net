require 'open-uri'
require 'nokogiri'
require 'iconv'

url = "http://www.ppomppu.co.kr/zboard/zboard.php?id=ppomppu4&page=1&divpage=7"
page = Nokogiri::HTML(open(url))
conv = Iconv.new('UTF-8', 'EUC-KR')

titles = page.search("font.list_title")

titles.each do |title|
  puts "#{conv.iconv(title.inner_html)}" 
end
