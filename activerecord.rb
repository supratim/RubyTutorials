require "rubygems"
require "active_record"

ActiveRecord::Base.establish_connection(
:adapter => "mysql",
:host => "localhost",
:usernaem => "root",
:password =>"",
:database => "test"
)

class Singer<ActiveRecord::Base

end
  

class Album <ActiveRecord::Base
  has_many :tracks
end

class Track <ActiveRecord::Base
  belongs_to :album
end

unless Album.table_exists?
  ActiveRecord::Schema.define do
    create_table(:albums) do |table|
      table.column :title,  :string
      table.column :artist, :string
    end
  end
end

unless Track.table_exists?
  ActiveRecord::Schema.define do
    create_table(:tracks) do |table|
      table.column :album_id, :integer
      table.column :song, :string
    end
  end
end



     

@albums = Album.find(:all)


@albums.each do |album|
  puts "Title : #{album.title}"
  album.tracks.each do |track|
    puts "  Tracks #{track.song}"
  end
end


# creating record 
# album = Album.new
#  album.title = 'Hard Days Night'
#  album.artist = 'The Betles'
# album.save
# album.tracks.create(:song => 'Let It Be')
# album.tracks.create(:song => 'Please me Tease me')
# album.tracks.create(:song => 'Yelow Submarine')
# album.tracks.create(:song => 'Yeasterday')

#album.save