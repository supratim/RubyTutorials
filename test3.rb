require 'rubygems'
require  'sqlite3'

db = SQLite3::Database.new("db1.db")

db.execute ("create table t1 (t1k INTEGER PRIMARY KEY, 
                              data TEXT, 
                              num double,
                              timeEnter DATE)")


db.execute("insert into t1 ( data,num) values ('this is a sample data',3)")

rows = db.execute( "select * from t1")

