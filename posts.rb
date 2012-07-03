require 'rubygems'
require 'dm-core'

# A Sqlite3 connection to a database file:

DataMapper.setup(:default, "sqlite3:///#{Dir.pwd}/test.db")

class Post
  include DataMapper::Resource
 
  # The Serial type provides auto-incrementing primary keys
  property :id,         Serial
  # ...or pass a :key option for a user-set key like the name of a user:
  property :name,       String, :key => true
 
  property :title,      String
  property :body,       Text
  property :created_at, DateTime
end
 
class Comment
  include DataMapper::Resource
  property :id,         Serial
 
  property :posted_by,  String
  property :email,      String
  property :url,        String
  property :body,       Text
end
 
class Category
  include DataMapper::Resource
  property :id,         Serial
  property :name,       String
end

class Post
  has n, :comments
end
 
class Comment
  belongs_to :post
end

class Categorization
  include DataMapper::Resource
  property :id,         Serial
 
  property :created_at, DateTime
 
  belongs_to :category
  belongs_to :post
end
 
# Now we re-open our Post and Categories classes to define associations
class Post
  has n, :categorizations
  has n, :categories, :through => :categorizations
end
 
class Category
  has n, :categorizations
  has n, :posts,      :through => :categorizations
end

DataMapper.auto_migrate!

DataObjects::Sqlite3.logger = DataObjects::Logger.new(STDOUT, 0)

