require "rubygems"
require "active_record"

ActiveRecord::Base.establish_connection(
:adapter => "mysql",
:host => "localhost",
:usernaem => "root",
:password =>"",
:database => "test"
)

class Picture < ActiveRecord::Base
#Code here
end

puts Picture.count