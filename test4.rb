require "rubygems"
require "active_record"

ActiveRecord::Base.establish_connection(
:adapter => "mysql",
:host => "localhost",
:usernaem => "root",
:password =>"",
:database => "test"
)

class Account < ActiveRecord::Base
end

account = Account.new
account.name ="supratim dey"
account.budget="1000"
account.save