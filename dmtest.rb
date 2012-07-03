#!/usr/bin/env ruby
require 'rubygems'
require 'dm-core'

DataMapper.setup(:default, 'postgres://localhost/pgtest')

DataMapper.setup(:default,{
  :adapter =>"postgres",
  :database =>"pgtest",
  :username =>"postgres",
  :password =>"sup123",
  :host =>"localhost"
  
})

class Zoo
  include DataMapper::Resource
  property :id,         Serial
  property :name,       String
  property :description, Text
  property :inception,  DateTime
  property :open,       Boolean, :default =>false
end

# The following peice of code works to cerate the database and insert the record  
#DataMapper.auto_migrate!
#
#zoo = Zoo.new
#zoo.attributes = {:name =>'the glue factory', :inception => Time.now}
#zoo.save

#zoo = Zoo.new
#zoo.name ='awesome town zoo'
#zoo.description =' a great zoo to visit'
#zoo.inception = Time.now 
#zoo.save

zoo = Zoo[2]
zoo.update_attributes(:name =>'Funcky Twon Municipal Zoo')

zoo = Zoo.new(:name => 'DodgyTown Zoo')  