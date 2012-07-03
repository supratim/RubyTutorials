require 'rubygems'
require 'mysql'

begin
    con = Mysql.new 'localhost', 'root', 'sup123','db1'

    
    rs = con.query("select * from tab1")
    n_rows = rs.num_rows
    
    puts "There are #{n_rows} records in the table"
    
    rs.each_hash do |row|
      puts row['c2']
    end
    
    
rescue Mysql::Error => e
    puts e.errno
    puts e.error
    
ensure
    con.close if con
end