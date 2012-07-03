require 'rubygems'
require 'ym4r/yahoo_maps/building_block'
include Ym4r::YahooMaps::BuildingBlock
result = MapImage::get(:street =>"1 Infinite Loop",
                        :city => "Cupertino",
                        :state => "CA",
                        :zip => "95014",
                        :image_type => "png")
 puts result
 
 result::download_to("m.png")