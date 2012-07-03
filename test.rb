require 'rubygems'
require 'rbosa'
itunes = OSA.app('iTunes')

track = itunes.current_track
p track                     # <OSA::Itunes::FileTrack:0x1495e20>
p track.name                # "Over The Rainbow" 
p track.artist              # "Keith Jarrett" 
p track.duration            # 362.368988037109 
p track.date_added.to_s     # "2006-06-30" 
p track.enabled?            # true



# Play the selected track.
itunes.play                    

# Fade the volume.
100.times { |i| itunes.sound_volume = i; sleep 0.1 }  

# Set iChat's status message to the current track.
OSA.app('iChat').status_message = "Playing: #{track.name}"
