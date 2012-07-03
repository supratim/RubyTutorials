

require 'rubygems'
require  'aws/s3'

 

AWS::S3::Base.establish_connection!(
    :access_key_id     => 'AKIAJTWRZPPVORZWPQYA',
    :secret_access_key => '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'
)

Service = AWS::S3::Service
Bucket = AWS::S3::Bucket
S3Obj  = AWS::S3::S3Object

puts "There are total #{Service.buckets.count} Buckets in you AWS S3 Server"

file ='a.xml'
S3Obj.store(file,open(file),'sd.com.jukebox')

Service.buckets.each do |bkt|
  puts bkt.name
  objs = bkt.objects
  objs.each do |o|
    puts "      " + o.key 
    
  end
    
end



#puts "Size of GA-Bucket is #{Bucket.objects('bucket').size}"



