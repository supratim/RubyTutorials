require 'rubygems'
require 'scruffy'

graph = Scruffy::Graph.new

graph.renderer = Scruffy::Renderers::Standard.new

graph.add :line, 'Example', [20,100,70,30,106]

graph.render :to => "Line_test.svg"

graph.render :width => 300, :height =>200, :to => "linetest.png", :as => 'png'