class Song
  @@plays =0
  def initialize(name,artist,duration)
    @name   =name
    @artist =artist
    @duration =duration
    @plays = 0
  end
  
  def play
   @plays += 1
   @@plays +=1
  puts "this song: #@plays plays. total #@@plays plays"  
  end
  
  
  def to_s
    "song : #{@name} -- #{@artist}  (#{@duration})"
  end  
  
    attr_reader :name, :artist, :duration
    attr_writer :duration
    
end

class SongList
  
  def initialize
    @songs = Array.new
  end
  
  def append(aSong)
    @songs.push(aSong)
    self
  end
  
  def deleteFirst
    @songs.shift
  end
  
  def deleteLast
    @songs.pop
  end
  
  def [] (key)
    if key.kind_of?(Integer)
      return @songs[key]
    else
      for i in 0...@songs.length 
        return @songs[i]  if key ==@songs[i].name
      end
    end 
    return nil  
  end  
  
  def length
    puts @songs.length
  end
    
end

list = SongList.new
list.append(Song.new("song1","artist1",10)).
     append(Song.new("song2","artist2",20)).
     append(Song.new("song3","artist3",30))

puts list.length
puts list[1]

# aSong = Song.new("bicylops","fleck", 260)
#puts aSong.to_s
#puts aSong.artist 
#puts aSong.duration
#aSong.duration = 257
#puts aSong.to_s
#s2 = Song.new("song1","artist1",235)
#s3 = Song.new("song2","def artist2",239)
#aSong.play 
#s2.play
#s3.play
#s2.play
