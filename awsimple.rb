require 'rubygems'
require 'simple_record'

SimpleRecord.establish_connection('AKIAJTWRZPPVORZWPQYA','Yx7I3l5hqRTaylOJqxXKw5d5g4+UM0yIAkaqbuBq')
 
class MyModel < SimpleRecord::Base
  has_strings :name
  has_ints    :age
end
# it section is working to get the data pushed to aws smipledb
#mm = MyModel.new
#mm.name="Roma"
#mm.age=28
#mm.save
#id= mm.id

#mm2 = MyModel.find(id)
#puts 'Got =' + mm2.name + " age "+ mm.age.to_s 
 

@users = MyModel.find(:all)

@users.each do |user|
  puts "Name  :  #{user.name }  Age: #{user.age}"
end
