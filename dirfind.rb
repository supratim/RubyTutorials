require 'rubygems'
require 'find'

total_size =0

Find.find("/Users/supratimdey/Sites/railone") do |path|
  
  if FileTest.directory?(path)
    puts system("du -hd:1 #{path}")
    if File.basename(path)[0] == ?.
      Find.prune
    else
      next
    end
  else
    
  end
end
