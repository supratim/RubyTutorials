require 'rubygems'
require 'mechanize'

agent = Mechanize.new

page = agent.get('http://google.com')

page.images.each do |img|
  puts img.url
end

page.links.each do |link|
  puts link.text
end
 