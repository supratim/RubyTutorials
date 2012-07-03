require 'rubygems'
require 'scrapi'

scraper = Scraper.define do
  array :articles
  process ".left_articles", :articles => Scraper.define {
    process ".title", :title => :text
    process "p", :content =>  :text
    process "a", :link => "@href"
   
    result :title, :content, :link
  }
  result :articles
end

uri = URI.parse("http://www.netbks.org/page/2")  

scraper.scrape(uri).each do |article|
  puts article.title
  puts article.content  
  puts article.link
end
