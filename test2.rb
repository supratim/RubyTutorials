require 'rubygems'
require  'mysql'

my = Mysql.new("localhost","root","")
my.select_db("test")
#con = my.connect('localhost','root','','test')
rs = my.query('select * from test.t1')
while row = rs.fetch_row  do
  printf "\n %s , %s ", row[0],row[1]

end  

rs.free
#con.close