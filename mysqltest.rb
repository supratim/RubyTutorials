require 'rubygems'
require 'mysql'

begin
    con = Mysql.new 'localhost', 'root', '','test'

    
    rs = con.query("select * from t1")
    n_rows = rs.num_rows
    
    puts "There are #{n_rows} records in the table"
    
    rs.each_hash do |row|
      puts row['name']
    end
    
    
rescue Mysql::Error => e
    puts e.errno
    puts e.error
    
ensure
    con.close if con
end