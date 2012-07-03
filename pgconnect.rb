require 'rubygems'
require 'pg'
conn = PG.connect( "host=localhost dbname=pgtest user=ruma password=sup123")
conn.exec( "SELECT * FROM posts" ) do |result|
  puts "     ID | Name             | title"
      result.each do |row|
    puts " %7d | %s | %s " %
      row.values_at('id', 'name', 'title')
  end
end