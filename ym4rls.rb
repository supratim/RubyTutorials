require 'rubygems'
require 'ym4r/yahoo_maps/building_block'
       include Ym4r::YahooMaps::BuildingBlock
       results = LocalSearch::get(:street => "road no. 12, banjara hills",
                                  :city => "Hyderabad",
                                  :state => "Andhra Pradesh",
                                  :zip => "500034",
                                  :query => "hospital")
       puts results

