require 'rubygems'
require 'twitter'

httpauth = Twitter::HTTPAuth.new("sdey@global-act.org","sup123")

client = Twitter::Base.new(httpauth)

client.update('hello from ruby using twitter gem 1 ')

client.user_timeline.each { |tweet| puts tweet.text }
