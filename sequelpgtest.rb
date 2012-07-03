require "rubygems"
require "sequel"

# connect to an in-memory database
DB = Sequel.postgres('pgtest', :user => 'postgres', :password => 'sup123', :host => 'localhost')


DB.create_table :items do
    primary_key :id
    String :name
    Float :price
end

items = DB[:items] # Create a dataset

# Populate the table
items.insert(:name => 'abc', :price => rand * 100)
items.insert(:name => 'def', :price => rand * 100)
items.insert(:name => 'ghi', :price => rand * 100)

# Print out the number of records
puts "Item count: #{items.count}"

# Print out the average price
puts "The average price is: #{items.avg(:price)}"