require 'rubygems'
require 'simple_record'

SimpleRecord.establish_connection('AKIAJTWRZPPVORZWPQYA','Yx7I3l5hqRTaylOJqxXKw5d5g4+UM0yIAkaqbuBq')
 
class MyModel < SimpleRecord::Base
  has_strings :name
  has_ints    :age
  has_booleans :is_nerd

end
array = Array.new

 mm = MyModel.new
 mm.name="Bhai"
 mm.age=37
 mm.is_nerd=true 
 
 array.push mm 
 
 mm = MyModel.new
 mm.name="Niv"
 mm.age=5
 mm.is_nerd = false
 
 array.push mm
 
 
 
# mm.save

# mm2 = MyModel.find_by_name("supratim")
# mm2.is_nerd=false
# mm2.save


MyModel.batch_save(array)

@users = MyModel.find(:all)

@users.each do |user|
  puts "Name  :  #{user.name }  Age: #{user.age} Nerd: #{user.is_nerd}"
end
