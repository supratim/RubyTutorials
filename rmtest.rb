require 'rubygems'
require 'RMagick'

clown = Magick::Image.read("clown.jpg")

clown = clown[0].vignette

clown.write('cl.jpg')