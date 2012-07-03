require 'rubygems'
require 'nokogiri'
require 'open-uri'
uri ="http://www.walmart.com/search/search-ng.do?search_constraint=0&ic=48_0&search_query=lost&Find.x=0&Find.y=0&Find=Find" 

doc = Nokogiri::HTML(open(uri))

doc.css(".item").each do |item|
  text = item.at_css(".prodLink").text
  price = item.at_css(".PriceMBold, PriceCompare, .BodyS").text[/\$[0-9\.]+/]
  puts "#{text} - #{price}"
end
