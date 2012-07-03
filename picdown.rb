Shoes.app do
  stack do
  title "Download Google Image", :size => 16
  @status = para "one Moment..."
  
  download "http://www.google.com/logos/nasa50th.gif",
    :save => "nasa.gif" do
     @status.text = "okey"
    end
    image "nasa.gif" 
  end
end
