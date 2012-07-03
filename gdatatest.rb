require 'rubygems'
require 'gdata'

#  client = GData::Client::DocList.new
client = GData::Client::Spreadsheets.new
client.clientlogin('supraitmdey74@gmail.com','abc12345')

# feed = client.get('http://docs.google.com/feeds/documents/private/full').to_xml
  feed = client.get('http://spreadsheets.google.com/feeds/spreadsheets/private/full').to_xml
feed.elements.each('entry') do |entry|
  puts 'title   ' + entry.elements['title'].text
 # puts 'type    ' + entry.elements['category'].attribute('label').value
  puts 'updated ' + entry.elements['updated'].text
  puts 'link    ' + entry.elements['link'].attribute('href').value
  
 
end
